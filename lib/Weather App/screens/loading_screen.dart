import 'package:angela_course_prac_repo/Weather%20App/screens/location.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';



class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void getLoc () async{
    GetLocation location = GetLocation();
    await location.getLocation();
    print(location.log);
    print(location.lat);
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
