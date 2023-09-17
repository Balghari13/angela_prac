import 'location.dart';
import 'networking.dart';


const apiKey = "30a812ec66c4bd3b3b7ea677cf93d81f";
const apiUrl = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  
  Future<dynamic> getCity(String cityName) async{
    NetworkHelper networkHelper = NetworkHelper(url: '$apiUrl?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
  
Future<dynamic> getLocationWeather() async{
  GetLocation location = GetLocation();
  await location.getLocation();
  NetworkHelper networkHelper =
  NetworkHelper(url: '$apiUrl?lat=${location.lat}&lon=${location.log}&appid=$apiKey&units=metric');
  var weatherData = await networkHelper.getData();
  return weatherData;
}
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}