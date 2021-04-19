import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class InfoWidget extends StatefulWidget {
  InfoWidget({Key key}) : super(key: key);

  @override
  _InfoWidgetState createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Thank you for support',
              textStyle: TextStyle(
                fontSize:30 ,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman' 
              ),
              speed:const Duration(milliseconds: 200)
            ),
            TypewriterAnimatedText(
              'Hope you liked my app',
              textStyle: TextStyle(
                fontSize:30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman'  
              ),
              speed:const Duration(milliseconds: 200)
            ),
          ],
          repeatForever: true,
          onTap: () {}
        )
      )
    );
  }
}