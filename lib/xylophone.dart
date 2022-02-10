import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({ Key key }) : super(key: key);

  @override
  _XylophonePageState createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {

   AudioCache player = AudioCache ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Center(
          child: Column(
            children: [

    buildContainer(color: Colors. redAccent, notaNomeri: '1'),
    buildContainer(color: Colors. orangeAccent,notaNomeri: '2'),
    buildContainer(color: Colors. yellowAccent,notaNomeri: '3'),
    buildContainer(color: Colors. greenAccent, notaNomeri: '4'),
    buildContainer(color: Colors. teal.shade500, notaNomeri: '5'),
    buildContainer(color: Colors. blue.shade500, notaNomeri: '6'),
    buildContainer(color: Colors. purple, notaNomeri: '7'),

      
            ],
          ),
        ),
      ),
      );
  }

  buildContainer ({@required Color color, @required String notaNomeri}) {
    return Expanded(
            child: Container(
              color: color,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    player. play('/notyi$notaNomeri.wav');
                  },
                  child: Container(),
                ),
              ),
            ),
          );
  }

  // ignore: unused_element
  Expanded _builContainer(Color tus ) {
    return Expanded(
            child: Container(
              color: tus,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    player. play('/notyi1.wav');
                  },
                  child: Container(),
                ),
              ),
            ),
          );
  }

  }