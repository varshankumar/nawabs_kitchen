import 'package:flutter/cupertino.dart';
import 'package:nawabs_kitchen/pages/home.dart';
import 'package:nawabs_kitchen/pages/menu_page.dart';
import 'package:nawabs_kitchen/pages/rewards.dart';
import 'package:nawabs_kitchen/pages/wallet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        //theme: CupertinoThemeData(scaffoldBackgroundColor:Color.fromARGB(0, 208, 188, 38), ),
        debugShowCheckedModeBanner: false,
        title: 'The Nawab\'s Kitchen',
        home: CupertinoPageScaffold(
            navigationBar: const CupertinoNavigationBar(
                middle: Text("The Nawab's Kitchen")),
            child: CupertinoTabScaffold(
              backgroundColor: Color.fromARGB(0, 208, 188, 38),
              tabBar: CupertinoTabBar(
                activeColor: Color.fromARGB(255, 0, 0, 0),
                items: const [
                  BottomNavigationBarItem(
                      label: "Home",
                      icon: Icon(
                        CupertinoIcons.home,
                      ),
                      activeIcon: Icon(
                        CupertinoIcons.home,
                      )),
                  BottomNavigationBarItem(
                      label: "Order",
                      icon: Icon(CupertinoIcons.cart),
                      activeIcon: Icon(
                        CupertinoIcons.cart_fill,
                      )),
                  BottomNavigationBarItem(
                      label: "Rewards",
                      icon: Icon(
                        CupertinoIcons.star,
                      ),
                      activeIcon: Icon(
                        CupertinoIcons.star_fill,
                      )),
                  BottomNavigationBarItem(
                      label: "Wallet",
                      icon: Icon(
                        CupertinoIcons.money_dollar_circle,
                      ),
                      activeIcon: Icon(
                        CupertinoIcons.money_dollar_circle_fill,
                      )),
                ],
              ),
              tabBuilder: (BuildContext context, int index) {
                if (index == 0)
                  return HomeScreen();
                else if (index == 1)
                  return MenuScreen();
                else if (index == 2)
                  return Rewards();
                else if (index == 3)
                  return WalletScreen(
                    key: key,
                  );
                return SizedBox();
              },
            )));
  }
}
