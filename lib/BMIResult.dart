import 'package:flutter/material.dart';

import 'Const.dart';

class BMIResult extends StatelessWidget {
  const BMIResult({Key? key, required this.result, required this.iaMale, required this.age}) : super(key: key);

  final int result;
  final bool iaMale;
  final int age;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Text('BMI RESULT'),centerTitle: true,
          backgroundColor: backGroundColor,
        ),
        body:Container(
          width: double.infinity,
          color: backGroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: primaryColor,),
                  height: size.height/5,
                  width: size.width/2,

                  child: Column(
                    children: [
                      const Expanded(child: SizedBox()),
                      Text('Gender : ${iaMale? 'Male' : 'Female'}',
                        style: const TextStyle(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                      Text('Result : $result',
                        style: const TextStyle(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                      Text('Age : $age',
                        style: const TextStyle(
                            color: textColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),),
                      const Expanded(child: SizedBox()),

                    ],
                  )

              ),

            ],
          ),
        )
    );
  }
}
