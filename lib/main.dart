import 'package:flutter/material.dart';
// TODO 6: Add missing import here.
import 'widgets/setting_card.dart';
import 'widgets/flower_logo.dart';


void main() {
  // TODO 2: Add something inside runApp(); so the app works as expected (tip: super short line!).
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO 3: What's the purpose of using a Scaffold widget here? Please answer this question in this very comment.
      //El Scaffold o en español, andamio, me proporciona una estructura estandar para contruir mi Screen, cuenta con   AppBar, Body,
      //botónFlotanteDeAcción,  Un Drawer o panel de navegacion lateral, y una BottonBarNAvigation o barra de navegación inferior
      home: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlowerLogo(
                size: 220,
                color: color,
              ),
              Column(
                children:  [
                  // TODO 4: Add some settings aquí using our function defined at the bottom of this file.
                  settingCard(icon:Icons.wifi, text:'Wifi', value:true),
                  settingCard(icon:Icons.bluetooth, text:'Bluetooth', value:false),
                  settingCard(icon:Icons.dark_mode, text:'Modo oscuro', value:false),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // We are going to use this widget many times, so it makes sense to extract it to
  // avoid code repetition. In fact, even if we are only going to use it once, it may
  // be a good idea to extract widgets into their own functions or classes.
 
}
