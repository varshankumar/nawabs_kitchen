import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'payment_configurations.dart' as payment_configurations;


class Rewards extends StatefulWidget {
  const Rewards({super.key});

  @override
  State<StatefulWidget> createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
 
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(
                height: 200,
              ),
        Text("1538 Points", 
        style: TextStyle(color: Colors.black,
        fontSize: 50
        ),),
        SizedBox(height: 80,),
          Text("Scan In Store to Earn Points", 
        style: TextStyle(color: Colors.black,
        fontSize: 30
        ),),
        SizedBox(height: 30,),
          Image.asset('assets/code.png'),
      ],),
    );
  }
}
