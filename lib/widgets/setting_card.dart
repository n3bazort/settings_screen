import 'package:flutter/material.dart';

Widget settingCard(
    {required IconData icon, required String text, required bool value}) {

  const color = Colors.green;

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
                  //Porque no está siendo manejada por un setState, por lo cual no va a cambiar visulmente el estado en la screen
                  // ignore: avoid_print
                  print('Why does this switch not switch values...?');
                }),
          ]),
    ),
  );
}
