import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locator{
double latitude;
double longitude;

void getLoc() async{
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.bestForNavigation);
  longitude = position.longitude;
  latitude = position.latitude;
  print(longitude);
  print(latitude);
}
}