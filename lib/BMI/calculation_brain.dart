
import 'dart:math';

class Calculation{
  final int height;
  final int weight;
  Calculation({required this.height, required this.weight});

  double _bmi= 0.0;

  String calculateBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
String getResult(){
    if(_bmi>=25.0){
      return 'Overweight';
    }else if(_bmi>=18.2){
      return 'Normal';
    }else{
      return 'Under Weight';
    }
}
String stringInterpolation(){
    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi>=18.2){
      return 'You have a normal body weight.';
    }else{
        return 'You have a lower than normal body weight. Try another diet more.';
    }
}
 }
