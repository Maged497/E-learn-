
import 'package:cources/course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final Course c;

  const About ({super.key, required this.c});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(c.name),
        centerTitle: true,
        backgroundColor:Colors.blue ,

      ),
body: Column(children: [
  Image(
      image:AssetImage(c.image),
    height: 200,
    width: double.infinity,
  ),
 SizedBox(height: 20,),
  Text("Descripition", style:TextStyle(
    color:Colors.red,
        fontSize: 30,
    fontWeight: FontWeight.bold,
  ),),
  SizedBox(height: 10,),
  Text(c.description),
],


),
    );
  }
}
