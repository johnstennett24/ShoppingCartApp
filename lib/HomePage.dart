import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/ShoppingCart.dart';
import 'package:untitled/BottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    ShoppingCart cart = ShoppingCart();

    var nameController = TextEditingController();
    var priceController = TextEditingController();

    void nameDispose() {
    nameController.dispose();
    }

    void priceDispose() {
      priceController.dispose();
    }

    var lastItem = cart.getLastItem(cart.cart);

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        title: const Text("Shopping Cart",
        style: TextStyle(
            fontSize: 30,
            fontFamily: CupertinoIcons.iconFont
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          child:
                          TextField(
                            controller: nameController,
                            decoration:
                            const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Item Name',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        height: 50,
                        child:
                          TextField(
                            controller: priceController,
                            decoration:
                            const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Price',
                            ),
                          ),
                        ),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 45,
                          child: OutlinedButton(
                            onPressed: () {
                              var name = nameController.text;
                              var p = priceController.text;
                              var price = double.parse(p);
                              cart.addItem(name, price);
                              cart.display(cart.cart);
                              setState(() {
                                lastItem = cart.getLastItem(cart.cart);
                              });
                            },
                          child: const Text("Add Item"),
                ),
                        ),
                      )
              ],
            ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("$lastItem",
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                  ],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
