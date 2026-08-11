
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
const CartPage({super.key});

@override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
            "Your Cart Items",
            style: TextStyle(fontSize: 20),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Cart Item ${index + 1}"),);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

