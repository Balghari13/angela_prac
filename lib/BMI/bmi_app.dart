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
                 Text('Height', style: kLabelText,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.baseline,
                   textBaseline: TextBaseline.alphabetic,
                   children: [
                     Text(height.toString(), style: kNumberText,),
                     Text('cm', style: kLabelText,)
                   ],
                 ),
                 SliderTheme(
                   data: SliderThemeData(
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
                Expanded(child:  ReusableContainer(color: kActiveCardColor,),),
                Expanded(child:
               ReusableContainer(color: kActiveCardColor,),),

              ],
            )),
            Container(
              width: double.infinity,
             height: kBottomHeightContainer,
              margin: const EdgeInsets.only(top: 10),
             color: kBottomContainerColor,

            ),
          ],
        ),
      ),
    );
  }
}





