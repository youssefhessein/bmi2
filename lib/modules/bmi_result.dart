
import 'package:bmi/modules/what_does_it_mean.dart';
import 'package:bmi/modules/whats_mean.dart';
import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  final bool isMale ;
  final int age ;
  final int weight ;
  final double height ;
  final double result ;

  const BmiResult({super.key, required this.age, required this.weight, required this.isMale, required this.height, required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Result", style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

                        Text("Gender : ${isMale? "Male":"Female"}",style: const TextStyle(fontSize:25 , fontWeight:FontWeight.bold)),
                        Text("Age :$age",style:const TextStyle(fontSize: 25 , fontWeight:FontWeight.bold),),
                        Text("Weight: $weight",style:const TextStyle(fontSize: 25, fontWeight:FontWeight.bold),),
                        Text("height: ${height.round()}",style: const TextStyle(fontSize: 25, fontWeight:FontWeight.bold),),
                        Text("BMI Result : ${result.toStringAsFixed(2)}",style: const TextStyle(fontSize: 25, fontWeight:FontWeight.bold)),
    Expanded(
    child: Padding(padding: const EdgeInsets.all(40.0),
   /* child:Container(decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40.0)),*/
    child:  Padding(
    padding: const EdgeInsets.all(40.0),
    child: Column(


    children: [
      InkWell(
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> WHATSMEAN()));

       },

        child:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child:   Container(color: Colors.deepPurple,
          //width: double.infinity,
          height: 40,
          child: const Center(child: Text("WHATS MEAN?" , style: TextStyle(fontSize: 25),
          ),
          ),
      ),
      ),
      ),
      SizedBox(height: 30,),
      InkWell(
        onTap: (){


          Navigator.push(context, MaterialPageRoute(builder: (context)=> WhatDoesItMean()));
        },
        child: Container(color: Colors.deepPurple,
         // width: double.infinity,
          height: 40,
          child: const Center(child: Text("ماذا يعني؟" , style: TextStyle(fontSize: 25),),),),
      ),

    ],

    ),
    ),
    ),
    ),



        ],
    ),
    ),
    );


  }
}
