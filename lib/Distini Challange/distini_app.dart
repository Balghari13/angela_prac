import 'package:flutter/material.dart';


class DistiniApp extends StatelessWidget {
  const DistiniApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI Calculation'),
      ),

      body: Center(
        child: Text('Calculate', style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: Theme(
        data: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)),
        child: FloatingActionButton(
          onPressed: (){}, child: Icon(Icons.add),
        ),
      ),
    );
  }
}
