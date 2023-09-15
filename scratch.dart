
import 'dart:io';

void main(){
  performance();
}

void performance() async{
  String task1result = task1();
  task2();
  //task3();
  String task3Data =  await task3();
  task5(task3Data);
  task4(task1result);

  task6();

}
String task1(){
  String result = 'Task 01 completed';
  return result;
  print(result);
}
void task2(){
  Duration threeS = Duration(seconds: 3);
  //syn
  sleep(threeS);
  String result = 'Task 02 completed';
  print(result);
}
Future task3() async{
  Duration fiveS = Duration(seconds: 4);
  //asyn
  String? res;
  await Future.delayed(fiveS,(){
     res = 'task 03 completed';
   // print(res);
  });
  return res;

}
void task4(String task1Data){
  String result = 'Task 04 completed with $task1Data';
  print(result);
}
void task5(String task3Data){
  String result = 'Task 05 completed with $task3Data';
  print(result);
}
void task6(){
  String res = 'Task 06 complete';
  print(res);
}