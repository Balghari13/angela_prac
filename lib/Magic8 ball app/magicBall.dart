import 'dart:math';

import 'package:flutter/material.dart';

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  var num = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            onPressed: (){
              setState(() {
                num = Random().nextInt(5)+1;
                print(num);
              });

            },
              child: Image.asset('assets/images/ball$num.png'),
          ),
      ),
    );
  }
}
