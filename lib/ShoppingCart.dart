import 'package:untitled/Item.dart';

class ShoppingCart {

  // Initializes a new list of items
  List<Item> cart = [];

  // The addItem() method adds an item into the Shopping Cart
  void addItem(String name, double price) {
    cart.add(Item(name, price));
  }

  void display(List<Item> cart) {
    for (var i = 0; i < cart.length; i++) {
      print(cart[i].name);
    }
  }

  // The getLastItem() method returns a string for the
  String? getLastItem(List<Item> cart) {
      if (cart.isEmpty) {
        var message = "Nothing in Cart";
        return message;
      } else {
        var lastItem = "Last Item Entered: ${cart[cart.length].name}";
        return lastItem;
      }
  }
  /// The sortCartByHighestPrice() method sorts the cart by highest price
  // The sortCartByHighestPrice() method returns a sorted list of the items
  List<Item> sortCartByHighestPrice(List<Item> cart) {

    // This for loop looks at the first item in the list
      for (var index = 0; index < cart.length; index++) {

        // Then this for loop looks at the next elements
        for (var sortPos = 1; sortPos < cart.length; sortPos++) {

          // Then this if statement will check if the price of
          // the index is less than the price of the sortPos, if
          // is true then it will swap them.
          if (cart[index].price! < cart[sortPos].price!) {
            cart[index] = cart[sortPos];
          }
        }
      }
      return cart;
  }

  /// The sortCartByLowestPrice() method returns a sorted list by lowest price first.
  List<Item> sortCartByLowestPrice(List<Item> cart) {
    // The for loop loops through the shopping cart
    for (var index = 0; index < cart.length; index++) {

      // Then this for loop goes through the same list with sortPos
      for (var sortPos = 0; sortPos < cart.length; sortPos++) {

        // And finally this if statement checks if the index is larger
        // than the sortPos and then if it is it swaps them.
        if (cart[index].price! > cart[sortPos].price!) {
          cart[index] = cart[sortPos];
        }
      }
    }
    return cart;
  }
}