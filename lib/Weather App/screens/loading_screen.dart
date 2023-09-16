import 'dart:convert';

import 'package:angela_course_prac_repo/Weather%20App/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

const apiKey = "30a812ec66c4bd3b3b7ea677cf93d81f";

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double? latitude;
  double? longtitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void getLoc () async{
    GetLocation location = GetLocation();
    await location.getLocation();
    longtitude= location.log;
    latitude= location.lat;
    getData();
  }
//   Future<Position> getLocation() async{
//     bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if(!serviceEnabled){
//       return Future.error('location service are disbled');
//     }
//     LocationPermission permission = await Geolocator.checkPermission();
//     if(permission==LocationPermission.denied){
//       permission = await Geolocator.requestPermission();
//       if(permission==LocationPermission.denied){
//         return Future.error('permission denied');
//       }
//     }
//     if(permission==LocationPermission.deniedForever){
//       return Future.error('cannot access location');
//     }
//     Position position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
// print(position);
//     return position;
//
//   }
  // void getLocation() async{
  //   try{
  //     Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  //     print(position);
  //   }catch(e){
  //     print(e);
  //   }
  //
  // }
  void getData() async{
    http.Response response=  await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longtitude&appid=$apiKey'));
    if(response.statusCode==200){
      var body = response.body;
      var condition = jsonDecode(body)['weather'][0]['id'];
      var city = jsonDecode(body)['name'];
      var temperatue = jsonDecode(body)['main']['temp'];
      print('city: $city');
      print('temperatue: $temperatue');
      print('condition: $condition');

    }else{
      print('error ${response.statusCode}');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
         getLoc();
        },child: Text('Get Location...'),),
      )
    );
  }
}
