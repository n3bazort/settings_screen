import 'package:flutter/material.dart';
// TODO 6: Add missing import here.

void main() {
  // TODO 2: Add something inside runApp(); so the app works as expected (tip: super short line!).
  runApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO 3: What's the purpose of using a Scaffold widget here? Please answer this question in this very comment.
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
                children: const [
                  // TODO 4: Add some settings here using our function defined at the bottom of this file.
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
  Widget settingCard(
      {required IconData icon, required String text, required bool value}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    icon,
                    size: 30.0,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    text,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Switch(
                  value: value,
                  activeColor: color,
                  onChanged: (bool newValue) {
                    // TODO 5: Why do you think this switch does not switch values on screen but this code is actually executed? Please answer this question in this very comment.
                    // ignore: avoid_print
                    print('Why does this switch not switch values...?');
                  }),
            ]),
      ),
    );
  }
}
