import 'dart:math';

import 'package:flutter/material.dart';

import 'BMIResult.dart';
import 'Const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 180;
  bool isMale = true;
  int weight = 40;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),centerTitle: true,
        backgroundColor: backGroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: backGroundColor,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: isMale ? primaryColor:thirdColor ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.female,size: 130,color: textColor,),
                              SizedBox(height: 5,)
                              ,Text('Female',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = true;

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: isMale ? thirdColor: primaryColor ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.male,size: 130,color: textColor,),
                              SizedBox(height: 5,)
                              ,Text('Male',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: backGroundColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Container
                  (
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor,),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text('Height',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}',style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),
                          ),
                          const SizedBox(width: 4,),
                          const Text('CM',style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: textColor
                          ),)
                        ],
                      ),
                      const SizedBox(height: 7,),
                      SliderTheme(
                        data: const SliderThemeData(
                          thumbColor: secondaryColor,
                          activeTrackColor: thirdColor,
                          inactiveTrackColor: forthColor,
                        ),
                        child: Slider(value: height,
                          max: 220,
                          min: 80,
                          onChanged: (value){
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              color: backGroundColor,
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: primaryColor),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            const Text('AGE',style: TextStyle(
                                color: textColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                            const SizedBox(height: 7,),
                            Text('$age',style: const TextStyle(
                                color: textColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                            const SizedBox(height: 13,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(highlightColor: thirdColor),
                                  child: FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                    mini: true,
                                    heroTag: 'age-',
                                    backgroundColor: secondaryColor,
                                    child:const Icon(Icons.remove,),
                                  ),
                                ),
                                const SizedBox(width: 25,),
                                Theme(
                                  data: Theme.of(context).copyWith(highlightColor: thirdColor),
                                  child: FloatingActionButton(onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                    mini: true,
                                    heroTag: 'age+',
                                    backgroundColor: secondaryColor,
                                    child: const Icon(Icons.add,),
                                  ),
                                )

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: primaryColor),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            const Text('WEIGHT',style: TextStyle(
                                color: textColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold)),
                            const SizedBox(height: 7,),
                            Text('$weight',style: const TextStyle(
                                color: textColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                            const SizedBox(height: 13,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(highlightColor: thirdColor),
                                  child: FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                    mini: true,
                                    heroTag: 'weight-',
                                    backgroundColor: secondaryColor,
                                    child: const  Icon(Icons.remove,),
                                  ),
                                ),
                                const SizedBox(width: 25,),
                                Theme(
                                  data: Theme.of(context).copyWith(highlightColor: thirdColor),
                                  child: FloatingActionButton(onPressed: (){
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                    mini: true,
                                    heroTag: 'weight+',
                                    backgroundColor: secondaryColor,
                                    child:const Icon(Icons.add,),
                                  ),
                                )

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            color: backGroundColor,
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: secondaryColor
                    ),
                    width: double.infinity,

                    child: Theme(
                      data: Theme.of(context).copyWith(highlightColor: thirdColor),
                      child: MaterialButton(onPressed: (){
                        var result = (weight/pow(height/100, 2)).round();
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>BMIResult(
                          age: age,
                          result: result,
                          iaMale: isMale,
                        )));
                      },height: 60,
                        child: const Text('CALCULATE',
                          style: TextStyle(fontSize: 20,color: textColor,fontWeight: FontWeight.bold)
                          ,),),
                    )),
                const SizedBox(height: 7,)
              ],
            ),

          ),

        ],
      ),
    );
  }
}
