
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const Color backgroundColor = Color.fromRGBO(0,0, 0, 1);

const Color gradientColor = Color.fromRGBO(255, 48, 205, 1);

const Color whiteColor =Color(0xffffffff);

const Color greyColorLight =Color(0xffeeeded);

const Color greyColor = Color(0xffc6c6c6);

const Color greyColorDark = Color(0xff5b5657);

const Color blackColor = Color(0xff030200);

const Color redColor = Color(0xffb80c09);

const Color transparent = Colors.transparent;

setLandscape() => SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight
  ]);

setPortrait() => SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp
]);

Map<int,String?> mapLetter = {
  0:"B",
  1:"A"
};