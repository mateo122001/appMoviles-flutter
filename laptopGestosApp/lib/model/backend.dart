



import 'package:laptopapp/model/laptop.dart';

class Backend{
  static final Backend _backend = Backend._internal();

  factory Backend(){
    return _backend;
  }

  Backend._internal();


  final _laptops = [

  Laptop(
    id: 1,
    marca: "Dell",
    modelo: "1xyz1",
    almacenamiento: 240),

  Laptop(
    id: 2,
    marca: "Hp",
    modelo: "2xyz2",
    almacenamiento: 240),

      Laptop(
    id: 3,
    marca: "Xiaomi",
    modelo: "3xyz3",
    almacenamiento: 120),

    Laptop(
    id: 4,
    marca: "Lenovo",
    modelo: "4xyz4",
    almacenamiento: 120),

    Laptop(
    id: 5,
    marca: "Acer",
    modelo: "5xyz5",
    almacenamiento: 240)




  ];

List<Laptop> getLaptops(){
  return _laptops;
}


void markLaptopComoVisto(int id){
  var index = _laptops.indexWhere((laptop) => laptop.id ==id);
  _laptops[index].revisado=true;
}


void deleteLaptop(int id){
  _laptops.removeWhere((laptop) => laptop.id ==id);
}

}