import 'package:coffee_shop_project/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const Text(
                  "How Would You like Your Coffee?",
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 25),

                Expanded(
                  child: ListView.builder(
                    itemCount: value.coffeeShop.length, // 🔥 real data
                    itemBuilder: (context, index) {
                      final coffee = value.coffeeShop[index];

                      return ListTile(
                        title: Text(coffee.name),
                        subtitle: Text(coffee.price),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}