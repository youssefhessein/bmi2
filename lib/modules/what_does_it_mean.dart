import 'package:flutter/material.dart';

class WhatDoesItMean extends StatelessWidget {
  const WhatDoesItMean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text(
        "ماذا يعني؟", style: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.deepPurple,
    ),
        body: const Center(
          child: Column(
            children: [
              Text("نطاق مؤشر كتلة الجسم:",style: TextStyle(color: Colors.deepPurple,fontSize: 30),),
              Text("بالنسبة لمعظم البالغين,يتراوح مؤشر كتلة الجسم المثالي بين 18.5 و 24.9  ",style: TextStyle(color: Colors.black,fontSize: 20),),
              SizedBox(height: 7),
              Text(".بالنسبة للاطفال والشباب الذين تتراوح اعمارهم بين 2 و 18 عاما , يأخذ حساب مؤشر كتلة الجسم في الاعتبار العمر والجنس وكذلك الطول والوزن  ",style: TextStyle(color: Colors.black , fontSize: 20)),
              Center(
                child: Column(
                    children: [
                      Text("أذا كان مؤشر كتلة الجسم لديك هو:",style: TextStyle(color: Colors.deepPurple,fontSize: 20)),
                      Text(" اقل من 18.5 - كنت في نطاق نقص الوزن",style: TextStyle(color: Colors.black)),
                      Text("بين 18.5 و 24.9 - انت في نطاق وزن صحي",style: TextStyle(color: Colors.black,)),
                      Text("بين 25 و 29.9 - كنت في نطاق الوزن الزائد",style: TextStyle(color: Colors.black),),
                      Text("بين 30 و 39.9 - انت في نطاق السمنة",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                    ]
                ),
              ),
            ],
          ),
        ),
    );
  }
}
