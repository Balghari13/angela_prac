//import 'dart:convert';

// import 'package:angela_course_prac_repo/Weather%20App/screens/city_screen.dart';
// import 'package:angela_course_prac_repo/Weather%20App/services/location.dart';
import 'package:angela_course_prac_repo/Weather%20App/screens/location_screen.dart';
import 'package:angela_course_prac_repo/Weather%20App/services/weather.dart';
//import 'package:angela_course_prac_repo/Weather%20App/services/networking.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:http/http.dart' as http;



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  // double? latitude;
  // double? longtitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocData();
  }
  void getLocData () async{

    // GetLocation location = GetLocation();
    // await location.getLocation();
    // longtitude= location.log;
    // latitude= location.lat;

    // NetworkHelper networkHelper =
    // NetworkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=${location.lat}&lon=${location.log}&appid=$apiKey&units=metric');
    // var weatherData = await networkHelper.getData();
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder:
        (context)=>LocationScreen(locationWeather: weatherData,)));
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

  //removed in separete class
  // void getData() async{
  //   http.Response response=  await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longtitude&appid=$apiKey'));
  //   if(response.statusCode==200){
  //     var body = response.body;
  //     var condition = jsonDecode(body)['weather'][0]['id'];
  //     var city = jsonDecode(body)['name'];
  //     var temperatue = jsonDecode(body)['main']['temp'];
  //     print('city: $city');
  //     print('temperatue: $temperatue');
  //     print('condition: $condition');
  //
  //   }else{
  //     print('error ${response.statusCode}');
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
child: SpinKitDoubleBounce(
  color: Colors.white,
  size: 80,
) ,
      )
    );
  }
}
