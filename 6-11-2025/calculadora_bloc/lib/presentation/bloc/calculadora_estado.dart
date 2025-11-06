class EstadoCalculadora {
  final String pantalla;
  final bool hayError;
  final List<String> historial;

  const EstadoCalculadora({
    this.pantalla = '0',
    this.hayError = false,
    this.historial = const [],
  });

  EstadoCalculadora copiar({
    String? pantalla,
    bool? hayError,
    List<String>? historial,
  }) => EstadoCalculadora(
    pantalla: pantalla ?? this.pantalla,
    hayError: hayError ?? this.hayError,
    historial: historial ?? this.historial,
  );
}
