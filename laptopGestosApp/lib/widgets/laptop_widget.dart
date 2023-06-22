

import 'package:flutter/material.dart';
import 'package:laptopapp/model/laptop.dart';

class LaptopWidget extends StatelessWidget{

  final Laptop laptop;
  final Function onSwipe;
  final Function onTap;
  final Function onLongPress;


  const LaptopWidget({Key?key,
    required this.laptop,
    required this.onSwipe,
    required this.onTap,
    required this.onLongPress}):super(key: key);

    @override
    Widget build (BuildContext context){
      return GestureDetector(
        onTap: (){
          onTap(laptop);
        },

        onHorizontalDragEnd: (DragEndDetails details){
          onSwipe(laptop.id);
        },

        onLongPress: (){
          onLongPress(laptop.id);
        },
       child: 
       Container(
        margin:const EdgeInsets.all(8.0),
        child: Row(
          children: [
              Expanded(
                flex: 1,
                child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: laptop.revisado? Colors.transparent:Colors.cyan,
                  shape:BoxShape.circle
                ),
              )),

              Expanded(
              flex:3,
              child: Column(
                children: [
                  Text("Id: ${laptop.id}"),
                  Text("Marca: ${laptop.marca}"),
                  Text("Modelo: ${laptop.modelo}"),
                  Text("Almacenamiento: ${laptop.almacenamiento} GB")
                ],
              ) )
          ],
        ),
       ),
      );
    }
}