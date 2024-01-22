import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'about.dart';
import 'course.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
       colorScheme: theme.colorScheme.copyWith(
           primary: Colors.red,
           secondary: Colors.blue,
       ),
      ),
      home: HomePage(),
  
    );

  }
}




class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
     title: Text("develobed by maged melad",
         style: TextStyle(

         color: Colors.red
     ),
    ),


      backgroundColor:  Colors.yellow,
      centerTitle: true,

    ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
            itemBuilder:(context , index) => item(Course.courses[index], context) ,
            separatorBuilder: (context , index) => SizedBox(

              height: 20,
            ),
            itemCount : Course.courses.length,
        ),
      ),
    );
  }
}


Widget item (Course model, context){

  return  InkWell(
    onTap:() {
      Navigator.push(context, MaterialPageRoute(

        builder: (context)=> About(c: model),
      ));
    },
    child: Card(
      elevation: 10,
      child: Row(
        children: [
          Image(
            image: AssetImage(model.image),
            height: 120,
            width: 140,
          ),
          Text(
            model.name,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),

          )
        ],
      ),

    ),
  );
}


