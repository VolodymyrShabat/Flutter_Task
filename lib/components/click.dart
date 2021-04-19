import 'dart:math';
import 'package:flutter/material.dart';

class ClickWidget extends StatefulWidget {
  ClickWidget({Key key}) : super(key: key);

  @override
  _NameState createState() => _NameState();
}


class _NameState extends State<ClickWidget> {

    //sets default color as white
    var _backgroundColorRGB=[255,255,255];
    var _textColor = Colors.black;
    generateRandomColor (){
      setState(()
      {
        var temp = _backgroundColorRGB.map((number) => Random().nextInt(256)).toList();
        _backgroundColorRGB.replaceRange(0, _backgroundColorRGB.length, temp);

        //calculate brightness
        double brightness = sqrt(0.299 *pow(_backgroundColorRGB[0],2) + 0.587 * pow(_backgroundColorRGB[1],2) + 0.114 * pow(_backgroundColorRGB[2],2));
        //change text color depending on brightness
        if(brightness>127.5 && _textColor==Colors.white)
        {
          _textColor = Colors.black;
        }
        else if(brightness<=127.5 && _textColor==Colors.black)
        {
          _textColor = Colors.white;
        }
      });
    }
    

  @override
  Widget build(BuildContext context) {
    


    return GestureDetector( 
      onTap: generateRandomColor,
      child:Container(
        color: Color.fromRGBO(_backgroundColorRGB[0], _backgroundColorRGB[1], _backgroundColorRGB[2], 1),
        child:Center(
          child: Text(
            'Hey there',
             style: TextStyle(
              fontSize: 50,
              color: _textColor,
              fontFamily: 'Times New Roman',
              decoration: TextDecoration.none
            )
          )
        )
      )
    );
  }
}