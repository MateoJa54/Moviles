import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/casouso_calcular.dart';
import '../../data/respositorio_historial.dart';
import 'calculadora_evento.dart';
import 'calculadora_estado.dart';

class CalculadoraBloc extends Bloc<EventoCalculadora, EstadoCalculadora> {
  final CasoUsoCalcular calcular;
  final RepositorioHistorial? repoHistorial;

  String _entrada = '';
  String? _a;
  Operador? _operador;

  CalculadoraBloc({required this.calcular, this.repoHistorial})
    : super(const EstadoCalculadora()) {
    on<DigitoPresionado>(_onDigito);
    on<PuntoPresionado>(_onPunto);
    on<CambiarSignoPresionado>(_onCambiarSigno);
    on<LimpiarPresionado>(_onLimpiar);
    on<OperadorSeleccionado>(_onOperador);
    on<IgualPresionado>(_onIgual);
    on<LimpiarHistorialPresionado>(_onLimpiarHistorial);
  }

  void _onDigito(DigitoPresionado e, Emitter<EstadoCalculadora> emit) {
    if (state.hayError) _reset();
    _entrada = (_entrada == '0') ? e.digito : _entrada + e.digito;
    emit(state.copiar(pantalla: _entrada, hayError: false));
  }

  void _onPunto(PuntoPresionado e, Emitter<EstadoCalculadora> emit) {
    if (state.hayError) _reset();
    if (_entrada.isEmpty)
      _entrada = '0.';
    else if (!_entrada.contains('.'))
      _entrada += '.';
    emit(state.copiar(pantalla: _entrada, hayError: false));
  }

  void _onCambiarSigno(
    CambiarSignoPresionado e,
    Emitter<EstadoCalculadora> emit,
  ) {
    if (_entrada.isEmpty) return;
    _entrada = _entrada.startsWith('-') ? _entrada.substring(1) : '-$_entrada';
    emit(state.copiar(pantalla: _entrada));
  }

  void _onLimpiar(LimpiarPresionado e, Emitter<EstadoCalculadora> emit) {
    _reset();
    emit(const EstadoCalculadora());
  }

  void _onOperador(OperadorSeleccionado e, Emitter<EstadoCalculadora> emit) {
    if (_entrada.isEmpty && _a == null) return;
    _a ??= _entrada.isEmpty ? '0' : _entrada;
    _operador = e.operador;
    _entrada = '';
    emit(state.copiar(pantalla: _a!));
  }

  void _onIgual(IgualPresionado e, Emitter<EstadoCalculadora> emit) {
    try {
      if (_a == null || _operador == null || _entrada.isEmpty) return;
      final a = double.parse(_a!);
      final b = double.parse(_entrada);
      final r = calcular(a, b, _operador!); // 👉 dominio
      final expr = '${_fmt(a)} ${_sym(_operador!)} ${_fmt(b)} = ${_fmt(r)}';

      repoHistorial?.agregar(expr);
      _a = r.toString();
      _entrada = '';
      _operador = null;

      emit(
        state.copiar(
          pantalla: _fmt(r),
          hayError: false,
          historial: repoHistorial?.obtener() ?? state.historial,
        ),
      );
    } catch (_) {
      _reset();
      emit(state.copiar(pantalla: 'Error', hayError: true));
    }
  }

  void _onLimpiarHistorial(
    LimpiarHistorialPresionado e,
    Emitter<EstadoCalculadora> emit,
  ) {
    repoHistorial?.limpiar();
    emit(state.copiar(historial: const []));
  }

  void _reset() {
    _entrada = '';
    _a = null;
    _operador = null;
  }

  String _fmt(double v) => (v % 1 == 0) ? v.toInt().toString() : v.toString();
  String _sym(Operador op) => switch (op) {
    Operador.suma => '+',
    Operador.resta => '-',
    Operador.multiplicacion => '×',
    Operador.division => '÷',
  };
}
