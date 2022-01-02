
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color backgroundColor = Color.fromRGBO(0,0, 0, 1);

const Color gradientColor = Color.fromRGBO(255, 48, 205, 1);

const Color whiteColor =Color(0xAA000000);

const Color transparent = Colors.transparent;

setLandscape() => SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight
  ]);

setPortrait() => SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp
]);