import 'package:angela_course_prac_repo/BMI/bmi_app.dart';
import 'package:angela_course_prac_repo/Distini%20Challange/distini_app.dart';
import 'package:angela_course_prac_repo/Magic8%20ball%20app/magicBall.dart';
import 'package:angela_course_prac_repo/DiceApp/diceApp.dart';
import 'package:angela_course_prac_repo/pract.dart';
import 'package:angela_course_prac_repo/xylophone%20app/xylophone.dart';
import 'package:flutter/material.dart';

import 'Quizzler App/quiz_app.dart';
import 'addImgFont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     theme: ThemeData.dark().copyWith(
       appBarTheme: AppBarTheme(color: Color(0xff0a0e21)),
       scaffoldBackgroundColor: Color(0xff0a0e21),
     ),
     home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Angela Course'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddImgFonts()));
            }, child: const Text('add Fonts & Img')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const DiceApp()));
            }, child: const Text('Dice App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MagicBallPage()));
            }, child: const Text('MagicBall App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const XylophoneApp()));
            }, child: const Text('Xylophone App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const QuizApp()));
            }, child: const Text('Quiz App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const DistiniApp()));
            }, child: const Text('Distini App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PractApp()));
            }, child: const Text('Prac App')),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BmiApp()));
            }, child: const Text('BMI App')),
          ],
        ),
      ),
    );
  }
}

