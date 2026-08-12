import 'package:coffee_shop_project/components/coffee_tile.dart';
import 'package:coffee_shop_project/models/coffee.dart';
import 'package:coffee_shop_project/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false)
        .addItemToCart(coffee);
  }



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
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      final coffee = value.coffeeShop[index];

                      return CoffeeTile(
                        coffee: coffee,
                        onPressed: () => addToCart(coffee),
                        icon: const Icon(Icons.add),
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