
import 'package:angela_course_prac_repo/Quizzler%20App/questions.dart';

//now by using class we can togather questions and answers at one place;

class QuizBrain{
  int _questionNumber = 0;
  List<Questions> _questionBank = [
    Questions( 'You can lead a cow down stairs but not up stairs',  false),
    Questions( 'Approqximatly one quarter of human bones are in feet awaya adasd asdaddasd',  true),
    Questions( 'A slung\'s blood is green', true),
    Questions( 'You can lead a cow down stairs but not up stairs',  false),
    Questions( 'Approqximatly one quarter of human bones are in feet awaya adasd asdaddasd',  true),
    Questions( 'A slung\'s blood is green', true),
  ];
  void nextQuestion(){
    if(_questionNumber < _questionBank.length-1){
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }
  bool isFinished(){
    if(_questionNumber>=_questionBank.length-1){
      return true;
    }else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }

   String getQuestion(){
     return _questionBank[_questionNumber].questionText;
   }
   bool getAnswer(){
     return _questionBank[_questionNumber].answer;
   }
}