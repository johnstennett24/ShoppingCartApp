import 'package:flutter/material.dart';

class Math {

  static int math() {
    var num = 2 + 2;
    return num;
  }

}

class NumberTextWidget extends StatelessWidget {
  const NumberTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var num = Math.math();
    return Text(
    "$num",
    );
  }
}
