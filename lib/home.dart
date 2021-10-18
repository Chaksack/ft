import 'package:flutter/material.dart';
import 'pages/transaction.dart';
import 'pages/home_page.dart';
import 'pages/fab_page.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [Homepage(), Transaction()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Homepage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(),
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.account_balance_wallet),
          backgroundColor: Colors.red,
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => fabpage()));
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Homepage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.red : Colors.grey,
                      ),
                      Text('Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.red : Colors.grey,
                          ))
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = Transaction();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.compare_arrows_sharp,
                        color: currentTab == 1 ? Colors.red : Colors.grey,
                      ),
                      Text('Transactions',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.red : Colors.grey,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
