

import 'dart:math';

import 'package:bmi/modules/bmi_result.dart';
import 'package:flutter/material.dart';


class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key}) ;

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 120;
  int age = 20;
  int weight = 20;
  bool isMale = false ;
   double result = 0  ;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "BMI Calculator", style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        isMale=true;
                      });
                    },
                    child: Padding(padding: const EdgeInsets.all(20.0),
                      child: Container(decoration: BoxDecoration(
                          color:isMale? Colors.blue: Colors.grey,
                          borderRadius: BorderRadius.circular(20.0)),
                        child: const Padding(
                          padding:  EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/Male.png"),
                                height: 90, width: 90,),
                              SizedBox(height: 10),
                              Text("Male",style: TextStyle(fontSize: 35),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child:GestureDetector (
                    onTap: (){setState(() {
                      isMale = false;
                    });},
                    child: Padding(padding: const EdgeInsets.all(20.0),
                      child: Container(decoration: BoxDecoration(color:
                      isMale ==null||isMale==true ?Colors.grey: Colors.pink,
                          borderRadius: BorderRadius.circular(20.0)),
                        child:const Padding(
                          padding:  EdgeInsets.all(20.0),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage("assets/images/Female.png"),
                                height: 90, width: 90,),
                              SizedBox(height: 10),
                              Text("Female",style: TextStyle(fontSize: 30),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding:const EdgeInsets.all(20.0),
           child: Container(
             width: double.infinity,
             decoration: BoxDecoration(color: Colors.grey,
             borderRadius: BorderRadius.circular(20.0),
             ),
             child:  Column(children: [const Text("Height",style: TextStyle(fontSize: 35),),
               Text(height.toString(),style: const TextStyle(fontSize: 35),
               ),
               Slider(
                 activeColor: Colors.amber,
                 inactiveColor: Colors.black,
                 thumbColor: Colors.red,
                 min: 120,
                 max: 220,
                   value: height ,
                   onChanged: (value){
                   setState(() {
                    height = value ;
                   });
               },
               ),
             ],
             ),
           ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(padding: const EdgeInsets.all(20.0),
                    child: Container(decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)),
                      child:  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
          
                          children: [
                          const Text('Age',style: TextStyle(fontSize: 35),),
                          const  SizedBox(height: 10),
                            Text("${age.round()}",style: const TextStyle(fontSize: 35),),
                            Row(children: [
          

                               Expanded(
                                 child: FloatingActionButton(
                                    heroTag: 'age --',
                                    backgroundColor: Colors.blue,
                                    onPressed: (){
                                      setState(() {
                                        if(age>1) {
                                          age--;
                                        }
                                      });
                                    },child: const Icon(Icons.remove),),
                               ),

                              const SizedBox(width: 15,),

                                 Expanded(
                                   child: FloatingActionButton(
                                    heroTag: 'age ++',
                                    backgroundColor: Colors.blue,
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    },child: const Icon(Icons.add),),
                                 ),

                            ],)
          
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(padding: const EdgeInsets.all(20.0),
                    child:Container(decoration: BoxDecoration(color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)),
                      child:  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
          
                          children: [
                          const  Text('Weight',style: TextStyle(fontSize: 30),),
                          const  SizedBox(height: 10),
                            Text("${weight.round()}",style:const TextStyle(fontSize: 35),),
                            Row(children: [
          
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'weight --',
                                  backgroundColor: Colors.blue,
                                    onPressed: (){
                                  setState(() {
                                    if(weight>10) {
                                      weight--;
                                    }
                                  });
                                },child:const Icon(Icons.remove),),
                              ),
                              const SizedBox(width: 15,),
                              Expanded(
                                child: FloatingActionButton(
                                  heroTag: 'weight ++',
                                  backgroundColor: Colors.blue,
                                    onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },child: const Icon(Icons.add),),
                              ),
                            ],)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
              result = weight/pow(height/100,2);

                Navigator.push(context, MaterialPageRoute(builder: (context) =>  BmiResult(  isMale: isMale! ,age: age, weight: weight, height: height, result: result,)));
              },
              child: Container(color: Colors.blue,
              width: double.infinity,
              height: 100,
              child: const Center(child: Text("Calculate" , style: TextStyle(fontSize: 40),),),),
            ),
          ],
          ),
        ),
    );
  }
}
