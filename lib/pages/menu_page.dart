import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nawabs_kitchen/widgets/food_item.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List items = [
    FoodItem(name: "Chicken Tikka Masala", image: 'assets/chicken_tikka.jpg'),
    FoodItem(name: "Butter Paneer Masala", image: 'assets/butter_paneer.jpg'),
    FoodItem(name: "Chicken Biriyani", image: 'assets/chicken_biriyani.jpg'),
    FoodItem(name: "Hakka Noodles", image: 'assets/noodles.jpg'),
    FoodItem(name: "Naan", image: 'assets/naan.jpg'),
    FoodItem(name: "Tandoori Chicken", image: 'assets/tandoori_chicken.jpg'),
    FoodItem(name: "Fish Pakora", image: 'assets/fish.jpg'),
    FoodItem(name: "Lamb Kabob", image: 'assets/lamb.jpg'),
    FoodItem(name: "Chicken Soup", image: 'assets/chicken_soup.jpg'),
    FoodItem(name: "Sweet Corn Soup", image: 'assets/corn_soup.jpg'),
    FoodItem(name: "Mango Lassi", image: 'assets/lassi.jpg'),
    FoodItem(name: "Gulab Jamun", image: 'assets/gulab_jamun.jpg'),
    FoodItem(name: "Vanilla Ice Cream", image: 'assets/ice_cream.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return items[index];
      },
      itemCount: items.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }
}
