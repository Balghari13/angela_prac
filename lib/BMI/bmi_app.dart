import 'package:angela_course_prac_repo/BMI/reusable_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_data.dart';

const bottomHeightContainer = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomContainerColor = Colors.pinkAccent;

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
             Expanded(child: Row(
              children: [
                Expanded(
                child: ReusableContainer(
                  cardChild: const IconWidget(icon: FontAwesomeIcons.mars, gender: 'Male',),
                  color: activeCardColor,),
                //   child: Container(
                //   margin: EdgeInsets.all(10),
                //   decoration: BoxDecoration(
                //     color: Colors.purple,
                //     borderRadius: BorderRadius.circular(10)
                //   ),
                // ),
                ),
                Expanded(child: ReusableContainer(
                  cardChild: const IconWidget(icon: FontAwesomeIcons.venus, gender: 'Female',),
                  color: activeCardColor,)),
              ],
            )),
             Expanded(child: ReusableContainer(color: activeCardColor,),),
             Expanded(child: Row(
              children: [
                Expanded(child:  ReusableContainer(color: activeCardColor,),),
                Expanded(child:
               ReusableContainer(color: activeCardColor,),),

              ],
            )),
            Container(
              width: double.infinity,
             height: bottomHeightContainer,
              margin: const EdgeInsets.only(top: 10),
             color: bottomContainerColor,

            ),
          ],
        ),
      ),
    );
  }
}





