import 'package:geolocator/geolocator.dart';

class GeoLocatorUtils{
  static Future<Position?> getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    permission = await Geolocator.checkPermission();


    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return null;
    }

    if (permission == LocationPermission.whileInUse) {
      Position position=await Geolocator.getCurrentPosition();
      print(permission);
      print('=====================================');
      print(position.latitude);
      print('=====================================');
      print(position.longitude);
      return position;
    }
    return null;

  }

}