

class Laptop {

  final int id;
  final String marca;
  final String modelo;
  final int almacenamiento;
  bool revisado;

Laptop({
  required this.id,
  required this.marca,
  required this.modelo,
  required this.almacenamiento,
  this.revisado=false
  });


}