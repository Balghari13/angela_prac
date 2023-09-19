import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  static const id = 'task_screen';
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
     floatingActionButton: FloatingActionButton(
        onPressed: (){},
       child: Icon(Icons.add),
       backgroundColor: Colors.lightBlueAccent,
     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Container(
           padding: const EdgeInsets.only(top:60,bottom: 30, right: 30, left: 30 ),
           child: const Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              CircleAvatar(child: Icon(Icons.list,size: 30, color: Colors.blueAccent,),
                backgroundColor: Colors.white, radius: 30,),
               SizedBox(height: 15,),
               Text('Todoey', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),),
               Text('12 Items', style: TextStyle(fontSize: 18),),
                 ],

               ),
         ),
         Expanded(
           child: Container(
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
             ),

             padding: EdgeInsets.all(15),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('Buy milk'),
                     Icon(Icons.square_outlined)
                   ],
                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Text('Buy milk'),
                     Icon(Icons.square_outlined)
                   ],
                 ),

               ],
             ),
           ),
         ),
       ],
     )

     );

  }
}
