abstract class RepositorioHistorial {
  void agregar(String expresion);
  List<String> obtener();
  void limpiar();
}

class RepositorioHistorialEnMemoria implements RepositorioHistorial {
  final _items = <String>[];
  @override
  void agregar(String e) => _items.insert(0, e);
  @override
  List<String> obtener() => List.unmodifiable(_items);
  @override
  void limpiar() => _items.clear();
}
