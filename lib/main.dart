import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/material.dart';

const apikey = "839791af34de888a152fd8d75acad3017c7b2988e2874c7e7288d0d6932cdb8ee615cbb3805e335a";

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  CameraDeepArController cameraDeepArController;
  int effectcount = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            CameraDeepAr(
              onCameraReady: (isReady) {
                setState(() {

                });
              },
              onImageCaptured: (path) {
                setState(() {

                });
              },
              onVideoRecorded: (path) {
                setState(() {

                });
              },
              androidLicenceKey: apikey,
              iosLicenceKey: apikey,
              cameraDeepArCallback: (c) async {
                cameraDeepArController = c;
                setState(() {

                });
              },
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(20),
                child: FloatingActionButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () => {
                    cameraDeepArController.changeMask(effectcount),
                    if(effectcount==7){
                      effectcount = 0,
                    },
                    effectcount++,
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}