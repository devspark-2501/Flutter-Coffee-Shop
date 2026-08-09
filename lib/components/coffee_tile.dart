import 'package:coffee_shop_project/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  const CoffeeTile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      title: Text(coffee.name),
      subtitle: Text(coffee.price),
      leading: Image.asset(coffee.imagePath),
    );
  }
}