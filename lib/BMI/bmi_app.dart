import 'package:angela_course_prac_repo/BMI/calculation_brain.dart';
import 'package:angela_course_prac_repo/BMI/result.dart';
import 'package:angela_course_prac_repo/BMI/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_data.dart';

enum Gender{
  male, female,
}


class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  // Color maleColor = inActiveColor;
  // Color femaleColor = inActiveColor;
     Gender? selectedGender;
     int height = 180;
     int weight = 60;
     int age = 23;
  // void update(Gender gender){
  //
  //   // if(gender== Gender.male){
  //   //   maleColor = activeCardColor;
  //   //   femaleColor = inActiveColor;
  //   // }
  //   // if(gender==Gender.female)
  //   // {
  //   //   femaleColor = activeCardColor;
  //   //   maleColor = inActiveColor;
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(child: Row(
              children: [
                Expanded(
                child: ReusableContainer(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: const IconWidget(icon: FontAwesomeIcons.mars, gender: 'Male',),
                  color: selectedGender==Gender.male?kActiveCardColor:kInActiveColor,),
                //   child: Container(
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.purple,
                //     borderRadius: BorderRadius.circular(10)
                //   ),
                // ),
                ),
                Expanded(child: ReusableContainer(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });

                  },
                  cardChild: const IconWidget(icon: FontAwesomeIcons.venus, gender: 'Female',),
                  color: selectedGender==Gender.female?kActiveCardColor:kInActiveColor,)),
              ],
            )),
             Expanded(child: ReusableContainer(color: kActiveCardColor,
             cardChild: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 const Text('Height', style: kLabelText,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                   children: [
                     Text(height.toString(), style: kNumberText,),
                     const Text('cm', style: kLabelText,)
                   ],
                 ),
                 SliderTheme(
                   data: const SliderThemeData(
                     thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                     overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                     thumbColor: Color(0xffeb1555),
                     overlayColor: Color(0x29eb1555),
                     activeTrackColor: Colors.white,
                     inactiveTrackColor: Color(0xff8d8e98)
                   ),

                   child: Slider(
                      value: height.toDouble(),
                     min: 120,
                     max: 220,
                     onChanged: (double val){

                        setState(() {
                          height = val.round();
                        });
                     },
                   ),
                 )
               ],
             ),
             ),),
             Expanded(child: Row(
              children: [
                Expanded(child:  ReusableContainer(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Weight',style: kLabelText,),
                      Text(weight.toString(), style: kNumberText,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularBtn(icon: FontAwesomeIcons.plus, onPressed: () {
                            setState(() {
                              weight++;
                            });
                          },),
                          const SizedBox(width: 10,),
                          CircularBtn(icon: FontAwesomeIcons.minus, onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },),
                         // FloatingActionButton(
                          //   backgroundColor: Color(0xff4c4f53),
                          //   onPressed: (){}, child: Icon(FontAwesomeIcons.minus, color: Colors.white,),)
                        ],
                      )

                    ],
                  ),
                  color: kActiveCardColor,),),
                Expanded(child:
               ReusableContainer(
                 cardChild: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text('Age', style: kLabelText,),
                     Text(age.toString(), style: kNumberText,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         CircularBtn(icon: FontAwesomeIcons.minus, onPressed: (){
                           setState(() {
                             age--;
                           });
                         }),
                         const SizedBox(width: 10,),
                         CircularBtn(icon: FontAwesomeIcons.plus, onPressed: (){
                           setState(() {
                             age++;
                           });
                         })
                       ],
                     )

                   ],
                 ),
                 color: kActiveCardColor,),),

              ],
            )),
            BtnContainer(opPressed: (){
              Calculation cal = Calculation(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>ResultPage(
                    bmiResult: cal.getResult(),
                    bmiScore: cal.calculateBMI(),
                    bmiDesc: cal.stringInterpolation(),
                  )));
            }, title: 'Calculate',)
            // GestureDetector(
            //   onTap: (){
            //       Navigator.pushNamed(context, 'resultPage');
            //   },
            //   child: Container(
            //     padding: EdgeInsets.only(bottom: 10),
            //     child: const Center(child: Text('Calculate', style: kNumberText,)),
            //     width: double.infinity,
            //    height: kBottomHeightContainer,
            //     margin: const EdgeInsets.only(top: 10),
            //    color: kBottomContainerColor,
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class CircularBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CircularBtn({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(icon),
        onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: const Color(0xff4c4f5e),
    constraints: const BoxConstraints.tightFor(
      width: 56, height: 56,
    ),
      elevation: 6.0,


    );
  }
}

class BtnContainer extends StatelessWidget {
  final String title;
  final VoidCallback opPressed;
  const BtnContainer({super.key, required this.opPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return    GestureDetector(
      onTap: opPressed,
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child:  Center(child: Text(title, style: kNumberText,)),
        width: double.infinity,
        height: kBottomHeightContainer,
        margin: const EdgeInsets.only(top: 10),
        color: kBottomContainerColor,

      ),
    );
  }
}






