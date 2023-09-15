import 'package:geolocator/geolocator.dart';

class GetLocation{
  double? lat;
  double? log;
Future<void> getLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        Future.error('Service not enabled');
      }
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('permission not granted');
        }
      }
      if (permission == LocationPermission.deniedForever) {
        return Future.error('permission denied');
      }
      Position position = await Geolocator.getCurrentPosition();
      lat = position.latitude;
      log = position.longitude;
      print(position);
      //return position;
    }catch(e){
      print(e);
    }
  }
}