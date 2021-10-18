import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class mappage extends StatefulWidget {
  mappage({Key? key}) : super(key: key);

  @override
  _mappageState createState() => _mappageState();
}

class _mappageState extends State<mappage> {
  static const _initalCameraPosition =
      CameraPosition(target: LatLng(37.773972, -122.431297), zoom: 11.5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red, title: Text("Navigation"))
        // body: GoogleMap(
        //   myLocationButtonEnabled: false,
        //   zoomControlsEnabled: false,
        //   initialCameraPosition: _initalCameraPosition,
        // ),
        );
  }
}
