import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'), );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone App'),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                    ),
                    onPressed: (){
                      playSound(1);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note1.wav'));

                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                    ),
                    onPressed: (){
                      playSound(2);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note2.wav'),);

                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple
                    ),
                    onPressed: (){
                      playSound(3);
                     // final player = AudioPlayer();
                     // player.play(AssetSource('note3.wav'));
                    },
                    child: Text('Click Me'),
                  ),
                ),
               Expanded(
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.green
                   ),
                    onPressed: (){
                      playSound(4);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note4.wav'));

                    },
                    child: Text('Click Me'),
                  ),
               ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow
                    ),
                    onPressed: (){
                      playSound(5);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note5.wav'));

                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange
                    ),
                    onPressed: (){
                      playSound(6);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note6.wav'));

                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: (){
                      playSound(7);
                      // final player = AudioPlayer();
                      // player.play(AssetSource('note7.wav'));

                    },
                    child: Text(''),

                  ),
                ),
              ],
            ),

        ),
      ),
    );
  }
}
