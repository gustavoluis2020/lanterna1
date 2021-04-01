import 'package:flutter/material.dart';
import 'package:flutter_flashlight/flutter_flashlight.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lanterna da Fiinha'),
        elevation: 3,
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/fi.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Transform.rotate(
            angle: -3.14 / 2,
            child: Transform.scale(
              scale: 3.0,
              child: Switch(
                onChanged: (value) {
                  setState(() {
                    isOn = !isOn;
                    isOn ? Flashlight.lightOn() : Flashlight.lightOff();
                  });
                },
                activeTrackColor: Colors.white,
                activeColor: Colors.blue,
                value: isOn,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
