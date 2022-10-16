import 'package:flutter/material.dart';

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize (
          preferredSize: const Size.fromHeight(40.0),
          child: Container(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("Shopping Cart",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
      body:
        ListView(

        ),
    );
  }
}
