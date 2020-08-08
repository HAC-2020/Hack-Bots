import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';


class MyMap extends StatefulWidget {
  @override
  State<MyMap> createState() => MyMapState();
}

class MyMapState extends State<MyMap> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Circle> circles;
  List data_lat = [37.4219983,54.78,17.4543778, 17.68];
  List data_long = [-122.084,100.084,78.5297031, 78.00 ];

  LocationData _locationData;
  @override
  void initState() {
    super.initState();
    getlocation();
  }

  bool busy = false;

  getlocation() async {
    setState(() {
      busy = true;
    });
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    print(_locationData);
    for (int i = 0; i<data_lat.length; i++ ) {
      circles = Set.from([Circle(circleId: CircleId("$i"),
    center: LatLng(data_lat[i], data_long[i] ),
    radius: 4000,
    fillColor: Color.fromRGBO(240, 128, 128, 0.3),
    strokeWidth: 0,
    )]);
    }
    setState(() {
      busy = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return !busy
        ? Scaffold(
            body: GoogleMap(
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                circles: circles,
                initialCameraPosition: CameraPosition(
                    target:
                        LatLng(_locationData.latitude, _locationData.longitude),
                    zoom: 12)))
        : Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}