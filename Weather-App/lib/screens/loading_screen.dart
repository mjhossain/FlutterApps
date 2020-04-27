import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  String apiKey = 'ab35b3b2e43ef88cdb1e209add27ff81';

  double lat, lon;
  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    lon = location.longitude;
    lat = location.latitude;

    String url =
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey';

    NetworkHelper networkHelper = NetworkHelper(url);
    var data = await networkHelper.getData();

    print(data['name']);
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

/*

body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),


 */
