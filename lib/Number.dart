import 'package:flutter/material.dart';

class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  int get number => 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(number.toString(),
                style: const TextStyle(
                  color: Colors.white, fontSize: 50,
                )),
              ],
            ),
          ],
        )
    );
  }
}
