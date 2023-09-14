import 'package:angela_course_prac_repo/BMI/bmi_app.dart';
import 'package:angela_course_prac_repo/BMI/constants.dart';
import 'package:angela_course_prac_repo/BMI/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String bmiScore;
  final String bmiDesc;
  const ResultPage({super.key, required this.bmiResult, required this.bmiScore, required this.bmiDesc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child:
          Container(
            alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(15),
              child: const Text('Your Result', style: kNumberText,))),
          Expanded(
            flex: 5,
              child: ReusableContainer(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(bmiResult, style: kLabelText, ),
                    Text(bmiScore, style: kNumberText,),
                    Text(bmiDesc,
                      style: kLabelText, textAlign: TextAlign.center,)
                  ],
                ),
            color: kActiveCardColor,
            
          )),
          BtnContainer(opPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiApp()));
          }, title:'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
