import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
   const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
   var leftDiceNumber = 4;
   var rightDiceNumber = 2;
   var leftDiceNumber1 = 1;
   var rightDiceNumber1 = 3;

   void changeDice1(){
     setState(() {
       rightDiceNumber = Random().nextInt(6)+1;
       leftDiceNumber = Random().nextInt(6)+1;
     });
   }

   void changeDice(){
     setState(() {
       leftDiceNumber1 = Random().nextInt(6)+1;
       rightDiceNumber1= Random().nextInt(6)+1;
     });

   }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('DiceApp'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //click on one dice it changes value of one side
    //         Row(
    //           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           //crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: [
    //              Expanded(
    //  //by default elevated button have 16 right and left padding.
    //               child: ElevatedButton(
    //                 style: ElevatedButton.styleFrom(
    //                   backgroundColor: Colors.transparent,
    //                   elevation: 0,
    //                 ),
    //                 onPressed: (){
    //                   setState(() {
    //                     // +1 because random no generates from 0 to 1 minus from max number.
    //                     leftDiceNumber = Random().nextInt(6)+1;
    //                   });
    //                 },
    //                 child: Image(
    //                   image: AssetImage('assets/images/dice$leftDiceNumber.png'),
    //                 ),
    //               ),
    //             ),
    //             //image assets can be show by both ways.Below is more convenient way
    //             Expanded(
    //             //  flex: 5,
    //               child: ElevatedButton(
    //                 style: ElevatedButton.styleFrom(
    //                   backgroundColor: Colors.transparent,
    //                   elevation: 0,
    //                 ),
    // onPressed: (){
    //                 setState(() {
    //                   rightDiceNumber = Random().nextInt(6)+1;
    //                 });
    // },
    //                   child: Image.asset('assets/images/dice$rightDiceNumber.png')),
    //             ),
    //
    //           ],
    //         ),
    //         SizedBox(height: 10,),
            //click on any of dice and it will chage value of both dice
            Row(
              children: [
                Expanded(
                  //by default elevated button have 16 right and left padding.
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    onPressed: (){
                      changeDice1();
                      // setState(() {
                      //   // +1 because random no generates from 0 to 1 minus from max number.
                      //   leftDiceNumber = Random().nextInt(6)+1;
                      //   rightDiceNumber= Random().nextInt(6)+1;
                      // });
                    },
                    child: Image(
                      image: AssetImage('assets/images/dice$leftDiceNumber.png'),
                    ),
                  ),
                ),
                //image assets can be show by both ways.Below is more convenient way
                Expanded(
                  //  flex: 5,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: (){
                        //remove duplication of code by writing functions.
                        changeDice1();
                        // setState(() {
                        //   rightDiceNumber = Random().nextInt(6)+1;
                        //   leftDiceNumber = Random().nextInt(6)+1;
                        // });
                      },
                      child: Image.asset('assets/images/dice$rightDiceNumber.png')),
                ),

              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/dice$leftDiceNumber1.png'),
                  ),),
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/images/dice$rightDiceNumber1.png'),
                ))
              ],
            ),
            ElevatedButton(onPressed: changeDice, child: Text('Roll'),),
          ],
        ),

      ),
    );
  }
}
