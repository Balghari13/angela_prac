import 'package:flutter/material.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('DiceApp'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             Expanded(
     //by default elevated button have 16 right and left padding.
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                onPressed: (){},
                child: const Image(
                  image: AssetImage('assets/images/dice1.png'),
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
                  print('pressed');
    },
                  child: Image.asset('assets/images/dice2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
