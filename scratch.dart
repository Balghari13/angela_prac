
import 'dart:io';
List<int> winningNo = [12,6,34,22,41,9];
void main(){
 // performance();
//   int initialBotel = 99;
//   int botelLeft = 98;
//   for(int i=initialBotel; i>0; i--){
//     if(i!=0){
//       print('$i bottels of bear, $i on wall ');
//       print('take one down, ${i-1} bottels left');
//     }else {
//       print('No bottels of bear, No on wall ');
//       print('take one down, 99 bottels left');
//
//   }
//
  List<int> ticket1 = [45,2,9,18,12,33];
  List<int> ticket2 = [41,17,26,32,7,35];
  checkMatch(ticket2);
 }

 void checkMatch(List ticket1){
  int match = 0;
  for(int myNum in ticket1){
    for(int winNum in winningNo){
      if(myNum==winNum){
        match++;
      }
    }
  }
  print('You have $match match');
 }

// void performance() async{
//   String task1result = task1();
//   task2();
//   //task3();
//   String task3Data =  await task3();
//   task5(task3Data);
//   task4(task1result);
//
//   task6();
//
// }
// String task1(){
//   String result = 'Task 01 completed';
//   return result;
//   print(result);
// }
// void task2(){
//   Duration threeS = Duration(seconds: 3);
//   //syn
//   sleep(threeS);
//   String result = 'Task 02 completed';
//   print(result);
// }
// Future task3() async{
//   Duration fiveS = Duration(seconds: 4);
//   //asyn
//   String? res;
//   await Future.delayed(fiveS,(){
//      res = 'task 03 completed';
//    // print(res);
//   });
//   return res;
//
// }
// void task4(String task1Data){
//   String result = 'Task 04 completed with $task1Data';
//   print(result);
// }
// void task5(String task3Data){
//   String result = 'Task 05 completed with $task3Data';
//   print(result);
// }
// void task6(){
//   String res = 'Task 06 complete';
//   print(res);
// }