import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:nespad/util/color.dart';

void main() => runApp(const NesPad());

class NesPad extends StatelessWidget {
  const NesPad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setLandscape();
    return  MaterialApp(
      theme: ThemeData(
        fontFamily: "Pretendo"
      ),
      debugShowCheckedModeBanner: false,
      title: 'NesPad',
      home:const Scaffold(
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
    return Container(
      width: 500,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(color: gradientColor.withOpacity(0.5), blurRadius: 30,spreadRadius: 1),
            BoxShadow(color: gradientColor.withOpacity(0.3), blurRadius: 50,spreadRadius: 20),
            BoxShadow(color: gradientColor.withOpacity(0.05), blurRadius: 70,spreadRadius: 60),
          ]),
      child: Container(
        decoration: BoxDecoration(
            color: blackColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: greyColorDark, width: 5)),
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Row(
          children: [
            cruz(),
            columns(),
            buttons(),
          ],
        ),
      ),
    );
  }

  cruz() {
    return const Expanded(
      flex: 4,
      child: FractionallySizedBox(
          widthFactor: 0.7, child: AspectRatio(aspectRatio: 1, child: Cruz())),
    );
  }

  columns() {
    return Expanded(
      flex: 4,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.only(bottom: 5),
              decoration:const  BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))
                  ),            
              )
          ),
          Expanded(
            flex: 4,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(5)
                  ),
                ),
          ),
          Expanded(
            flex: 5,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(5)
                  ),
                width: double.infinity,
                alignment: Alignment.center,    
                child:const Text("SELECT    START",style: TextStyle(color: redColor,fontSize: 16,fontWeight: FontWeight.bold),),  
                ),
          ),
          Expanded(
            flex: 6,
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: greyColorLight,
                  borderRadius: BorderRadius.circular(5)
                  ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: 
                  List.generate(2, (_) => 
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        height: 20,
                        decoration:  BoxDecoration(
                          color:blackColor,
                          boxShadow: const  [BoxShadow(color: blackColor,blurRadius: 1)],
                          borderRadius: BorderRadius.circular(20)
                        )
                      ),
                    )
                    ),
                )  
                
                ),
                
          ),
          Expanded(
            flex: 3,
            child: Container(
                margin: const EdgeInsets.only(top: 3,),
                decoration: const BoxDecoration(
                  color: greyColorLight,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(5))
                  ),
                
                ),
          )
        ],
      ),
    );
  }

  buttons() {
    return Expanded(
      flex: 4,
      child: Container(
        padding:const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: 
                Container(
                  alignment: Alignment.center,
                  child:const Text("N I N T E N D O" ,style: TextStyle(color: redColor,fontSize: 16,fontWeight: FontWeight.w900),),  
                )
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(2, (_) => 
                    Expanded(
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 1,
                            child: Container(
                              margin: const EdgeInsets.fromLTRB(5,5,5,5),
                              width: 20,
                              decoration:  BoxDecoration(
                                color:greyColor,
                                borderRadius: BorderRadius.circular(5)
                                ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ClipOval(child: 
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: redColor,
                                      boxShadow: [BoxShadow(color: blackColor,blurRadius: 10,spreadRadius: 20)]
                                    ),                              
                                  )
                                ),
                              ) ,  
                            ),
                          ),
                          FractionallySizedBox(widthFactor: 0.90, child: Text(mapLetter[_].toString() ,style: const TextStyle(color: redColor,fontSize: 16,fontWeight: FontWeight.w900),textAlign: TextAlign.end,)),  

                        ],
                      ),
                    )
                  ),
              )
            ),
            
          ],
        ),
      ),
    );
  }
}

class Cruz extends StatelessWidget {
  const Cruz({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        cuadro(alineacion: "top"),
        cuadro(alineacion: "bottom"),
        cuadro(alineacion: "left"),
        cuadro(alineacion: "right"),
        
        
      ],
    );
  }

  cuadro({String? alineacion}){
    const borderSide = BorderSide(color: whiteColor, width: 5);
    var alignment = Alignment.topCenter;
    Border? border;
    switch (alineacion) {
      case "top":
        alignment = Alignment.topCenter;
        border = const Border(
                      top:borderSide,
                      right: borderSide,
                      left: borderSide);
      break;
      case "bottom":
         alignment = Alignment.bottomCenter;
         border = const Border(
                      bottom:borderSide,
                      right: borderSide,
                      left: borderSide);
      break;
      case "right":
         alignment = Alignment.centerRight;
         border = const Border(
                      top:borderSide,
                      right: borderSide,
                      bottom: borderSide);
      break;
      case "left":
         alignment = Alignment.centerLeft;
         border = const Border(
                      top:borderSide,
                      bottom: borderSide,
                      left: borderSide);
      break;
    }
    return Positioned.fill(
          child: Align(
            alignment: alignment,
            child: FractionallySizedBox(
              widthFactor: 0.36,
              heightFactor: 0.36,
              child: Container(
                //transform: Matrix4.rotationZ(3.14),
                decoration: BoxDecoration(
                  border: border
                  //color: Colors.red,
                ),
              ),
            ),
          ),
        );
  }
}
