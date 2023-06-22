

import 'package:flutter/material.dart';
import 'package:laptopapp/model/laptop.dart';

class LaptopDetail extends StatelessWidget{

    final Laptop laptop;

  const LaptopDetail({Key? key, required this.laptop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Consulta individual de laptops"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Id: ${laptop.id}"),
              const SizedBox(height: 10.0),
              //const Divider(color: primaryColor),
              Text("Marca: ${laptop.marca}"),   
              //const SizedBox(height: 15.0),
              const SizedBox(height: 10.0),
              Text("Modelo: ${laptop.modelo}"),
              
              const SizedBox(height: 10.0),
              Text("Almacenamiento: ${laptop.almacenamiento} GB"),


            ],
          ),
        ));
  }
}

