import 'package:flutter_glow/flutter_glow.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Creates a stateless widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          // Probably wont make a difference for web but must use for devices like iphones. Just use all the time regardless good practice.
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/face.jpg'),
                radius: 85.0,
              ),
              Text(
                Config.name,
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 45.0,
                    fontFamily: 'BebasNeue',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                Config.position,
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'RobotoMono',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
              SizedBox(
                height: 15,
                width: 155,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: GlowIcon(
                      Icons.phone,
                      size: 39,
                      color: Colors.green,
                      glowColor: Colors.green,
                    ),
                    title: GlowText(
                      Config.phoneNumber,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      glowColor: Colors.green,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: GlowIcon(
                      Icons.send,
                      size: 39,
                      color: Colors.green,
                      glowColor: Colors.green,
                    ),
                    title: GlowText(
                      Config.email,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      glowColor: Colors.green,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListTile(
                    leading: GlowIcon(
                      Icons.mail,
                      size: 39,
                      color: Colors.green,
                      glowColor: Colors.green,
                    ),
                    title: GlowText(
                      Config.mailAddress,
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      glowColor: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
