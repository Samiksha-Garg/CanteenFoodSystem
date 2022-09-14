import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
class TextBox extends StatelessWidget {
  const TextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 170, height: 20),
            Text(
              ' We apologise for the inconvenience caused!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 170, height: 20),
            Text(
              ' Kindly give us 2-3 to get back at your issue',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 170, height: 20),
            Text(
              '             Thanks for your cooperation!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ]);
}