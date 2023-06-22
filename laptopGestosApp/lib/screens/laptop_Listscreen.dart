


import 'package:flutter/material.dart';
import 'package:laptopapp/model/backend.dart';
import 'package:laptopapp/model/laptop.dart';
import 'package:laptopapp/screens/laptop_detailscreen.dart';
import 'package:laptopapp/widgets/laptop_widget.dart';

class LaptopList extends StatefulWidget{

  final String titulo;

  const LaptopList({Key? key,required this.titulo }):super(key: key);

   @override
  _LaptopListState createState()=> _LaptopListState();
}


class _LaptopListState extends State <LaptopList>{

var laptops = Backend().getLaptops();


void markAsChecked(int id){
  Backend().markLaptopComoVisto(id);
  setState(() {
   laptops= Backend().getLaptops();
  });
}


void deleteLaptop(int id){
  Backend().deleteLaptop(id);
  setState(() {
   laptops= Backend().getLaptops();
    }
  );
}

void showDetail( Laptop laptop){
  Navigator.push(context, MaterialPageRoute(builder:(context){
  return LaptopDetail(laptop: laptop);
   }
  )
);

  Backend().markLaptopComoVisto(laptop.id);
  setState(() {
    laptops= Backend().getLaptops();
    }
  );
}

@override
Widget build (BuildContext context){
  return Scaffold(
   appBar: AppBar(title: Text(widget.titulo)),

   body: ListView.separated(
    itemBuilder:(BuildContext context, int index)=> LaptopWidget(laptop: laptops[index],
    onSwipe: deleteLaptop,
    onTap: showDetail,
    onLongPress: markAsChecked) ,
    separatorBuilder:(BuildContext context, int index)=>const Divider(
      color: Colors.cyan,
        thickness: 2, // Ajusta el grosor según tus necesidades

    ), 
    itemCount: laptops.length),
  );
}

}