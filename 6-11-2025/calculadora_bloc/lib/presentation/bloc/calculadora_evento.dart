import '../../domain/casouso_calcular.dart';

abstract class EventoCalculadora {}

class DigitoPresionado extends EventoCalculadora {
  final String digito;
  DigitoPresionado(this.digito);
}

class PuntoPresionado extends EventoCalculadora {}

class LimpiarPresionado extends EventoCalculadora {}

class CambiarSignoPresionado extends EventoCalculadora {}

class OperadorSeleccionado extends EventoCalculadora {
  final Operador operador;
  OperadorSeleccionado(this.operador);
}

class IgualPresionado extends EventoCalculadora {}

class LimpiarHistorialPresionado extends EventoCalculadora {}
