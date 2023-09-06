import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:angela_course_prac_repo/Quizzler%20App/quiz_brain.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
 List<Icon> scoreKepper = [];
 // List<String> questions=[
 //   'You can lead a cow down stairs but not up stairs',
 //   'Approximatly one quarter of human bones are in feet',
 //   'A slung\'s blood is green',
 //   'You can lead a cow down stairs but not up stairs',
 //   'Approximatly one quarter of human bones are in feet',
 //   'A slung\'s blood is green',
 // ];
 // List<bool> answers = [false, true, true,false, true, true];



//now by using class we can togather questions and answers at one place;
//  List<Questions> questionBank = [
//    Questions( 'You can lead a cow down stairs but not up stairs',  false),
//    Questions( 'Approximatly one quarter of human bones are in feet awaya adasd asdaddasd',  true),
//    Questions( 'A slung\'s blood is green', true)
//  ];

  //use abstraction to separate list and their methods to clead code

  QuizBrain quizBrain = QuizBrain();

  void chechAns(bool pickAns){
   // will able to change answer by own
    // bool correctAns = quizBrain.questionBank[questionNumber].answer;
    
    //to avoid this make questionbank private in separate class and call their function
    bool correctAns = quizBrain.getAnswer();
    setState(() {
if(quizBrain.isFinished()==true){
   Alert(
    context: context,
    title: 'Question',
    desc: 'You\'ve reached the end of quiz',
  ).show();
   quizBrain.reset();
   scoreKepper= [];
}else{
  if(correctAns==pickAns){
    scoreKepper.add(Icon(Icons.check, color: Colors.green,),);
  }else{
    scoreKepper.add(Icon(Icons.close,color: Colors.red,),);
  }
}
    quizBrain.nextQuestion();
    });
  }

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
                      child: Text(quizBrain.getQuestion(),style: TextStyle(
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
                //make a funtion so remove code duplication
                chechAns(true);
                 // bool correctAnswer = quizBrain.questionBank[questionNumber].answer;
                 // if(correctAnswer==true){
                 //   print('Your answer is right');
                 // }else{
                 //   print('wrong answer');
                 // }
                 //  setState(() {
                 //    if(questionNumber<2){
                 //      questionNumber++;
                 //    }else{
                 //      questionNumber=0;
                 //    }
                 //  });
                 // print(questionNumber);
              }, color: Colors.green,),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(btn: 'False', onTap: (){
                chechAns(false);
                // bool correctAnswer = quizBrain.questionBank[questionNumber].answer;
                // if(correctAnswer==false){
                //   print('your are correct');
                // }else{
                //   print('you are wrong');
                // }
                // setState(() {
                //   if(questionNumber<2){
                //     questionNumber++;
                //   }else{
                //     questionNumber=0;
                //   }
                //   // scoreKepper.add(Icon(Icons.close, color: Colors.red,), );
                // });
                // print(questionNumber);
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
