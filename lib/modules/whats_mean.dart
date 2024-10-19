import 'package:flutter/material.dart';

class WHATSMEAN extends StatelessWidget {
  const WHATSMEAN ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text(
"What`s Mean", style: TextStyle(
color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
),
centerTitle: true,
backgroundColor: Colors.deepPurple,
),
        body: const Center(
      child: Column(
        children: [
          Text("BMI RANGES:",style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
          Text("For most aduits,an ideal BMI is in the 18.5 to 24.9 range",style: TextStyle(color: Colors.black,fontSize: 20),),
          SizedBox(height: 7),
          Text("For children and young people aged 2 to 18, the BMI calculation takes into account age and gender as well as height and weight.",style: TextStyle(color: Colors.black , fontSize: 20)),
          Center(
            child: Column(
              children: [
                Text("IF YOUR BMI IS:",style: TextStyle(color: Colors.deepPurple,fontSize: 20)),
                Text("1- below 18.5-you,re in the under weight range",style: TextStyle(color: Colors.black)),
                Text("between 18.5 and 24.9-you,re in the healthy weight range",style: TextStyle(color: Colors.black,)),
                Text("between 25 and 29.9-you,re in the over weight range",style: TextStyle(color: Colors.black),),
                Text("between 30 and 39.9-you,re in the obese weight range",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
              ]
            ),
          ),
        ],
      ),
    )

    );
  }
}
