import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int value;
    return BottomNavigationBar(
      //onTap: (value) {
        //if (value == 0) Navigator.of(context)
      //},
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.add),
        label: 'Add Item'),

        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
        label: 'Cart'
        ),
      ],
    );
  }
}