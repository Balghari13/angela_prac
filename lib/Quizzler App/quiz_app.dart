import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
 List<Icon> scoreKepper = [];
 List<String> questions=[
   'You can lead a cow down stairs but not up stairs',
   'Approximatly one quarter of human bones are in feet',
   'A slung\'s blood is green',
   'You can lead a cow down stairs but not up stairs',
   'Approximatly one quarter of human bones are in feet',
   'A slung\'s blood is green',
 ];
 List<bool> answers = [false, true, true,false, true, true];
 int questionNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                 Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(questions[questionNumber],style: TextStyle(
                        color: Colors.white,
                      ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(btn: 'True', onTap: (){
                 bool correctAnswer = answers[questionNumber];
                 if(correctAnswer==true){
                   print('Your answer is right');
                 }else{
                   print('wrong answer');
                 }
                  setState(() {
                    if(questionNumber<5){
                      questionNumber++;
                    }else{
                      questionNumber=0;
                    }
                  });
                 print(questionNumber);
              }, color: Colors.green,),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(btn: 'False', onTap: (){
                bool correctAnswer = answers[questionNumber];
                if(correctAnswer==false){
                  print('your are correct');
                }else{
                  print('you are wrong');
                }
                setState(() {
                  if(questionNumber<5){
                    questionNumber++;
                  }else{
                    questionNumber=0;
                  }
                  // scoreKepper.add(Icon(Icons.close, color: Colors.red,), );
                });
                print(questionNumber);
              }, color: Colors.red),
            )),
            Row(
              children: scoreKepper,
            )


          ],
        ),
      ),
    );

  }
}

class CustomButton extends StatelessWidget {
  String btn;
  VoidCallback onTap;
  Color color;
  CustomButton({super.key, required this.btn,
  required this.onTap, required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      backgroundColor: color,
      ),
        onPressed: onTap,
        child: Text(btn),
    );
  }
}
