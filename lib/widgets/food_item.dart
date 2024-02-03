import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String name;
  final String image;
  String? comments;

  FoodItem({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text('Add Item'),
        content:  Column(
          children: [
            Text('Would you like to make any personal changes to the dish?'),
            SizedBox(height: 5,),
            CupertinoTextField()
          ],
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            /// This parameter indicates this action is the default,
            /// and turns the action's text to bold text.
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Add Item'),
          ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
        ],
      ));
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 100,
            height: 100,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(name, style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),)
        ],
      ),
    );
  }
}
