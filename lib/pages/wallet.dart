import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'payment_configurations.dart' as payment_configurations;


class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<StatefulWidget> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
   @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        SizedBox(
                height: 200,
              ),
        Text("\$36.32", 
        style: TextStyle(color: Colors.black,
        fontSize: 70
        ),),
        SizedBox(height: 100,),
        CupertinoButton(onPressed: (){}, child: Container(
          height: 50,
          child: Image.asset('assets/google-pay-mark.png'))),
          CupertinoButton(onPressed: (){}, child: Container(
          height: 50,
          child: Image.asset('assets/apple-pay.png'))),
      ],),
    );
  }
}
