import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:task_trainee/components/click.dart';
import 'package:task_trainee/components/info.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<HomePage> {

  int sectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    var curvedNavigationBar = CurvedNavigationBar
        (
          items: <Widget>[
            Icon(
              Icons.menu,
              color:Colors.white
              ),
            Icon(
              Icons.info,
              color:Colors.white
              )
          ],
          index:0,
          height:50,
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.black.withOpacity(0.8),
          backgroundColor: Colors.blueAccent.withOpacity(0.2),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
             setState(() => sectionIndex=index);
          },
        );


    return Container(
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text(
            'Clicker App | ' + (sectionIndex==0 ? 'Home' : 'Info'),
            style: TextStyle
            (
              fontFamily: 'Times New Roman',
              fontWeight: FontWeight.bold
              )
            ),
          leading: Icon(Icons.touch_app),
          backgroundColor: Colors.blueAccent
        ),
        body: sectionIndex==0 ?ClickWidget(): InfoWidget(),
        bottomNavigationBar: curvedNavigationBar
      )
    );
  }
}