import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              Image.asset(
                'assets/logo.png',
              ),
              SizedBox(
                height: 30,
              ),
              Text("Sunday - Thursday: 11AM - 10PM\n"),
              Text("Friday - Saturday: 11AM - 11PM"),
              SizedBox(height: 20,),
              TextButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse("https://goo.gl/maps/mL3nZRv4mSDvf59h9"));
                  },
                  child: Text("39030 Argonaut Way\nFremont , California 94538")),
              TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse('tel:510-713-0183'));
                  },
                  child: Text("Mobile: 510-713-0183")),
              TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'mailto:nawabskitchenusa@gmail.com?subject=The Nawab\'s Kitchen Inquiry'));
                  },
                  child: Text("Email: nawabskitchenusa@gmail.com")),
    
            ],
          ),
        ),
      ),
    );
  }
}
