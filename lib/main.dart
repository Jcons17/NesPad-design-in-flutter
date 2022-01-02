import 'package:flutter/material.dart';
import 'package:nespad/util/color.dart';

void main() => runApp(NesPad());

class NesPad extends StatelessWidget {
  const NesPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    setLandscape();
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NesPad',
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: NesPadDesign(),
        ),
      ),
    );
  }
}

class NesPadDesign extends StatelessWidget {
  const NesPadDesign({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.6,
      child: AspectRatio(
        aspectRatio: 40/16,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(color: gradientColor.withOpacity(0.6),blurRadius: 30),
              //BoxShadow(color: gradientColor.withOpacity(0.4),blurRadius: 200),
              //BoxShadow(color: gradientColor.withOpacity(0.2),blurRadius: 300),
              
              ]
          ),
          child: Stack(

          ),
          
        ),
      ),
    );
  }
}