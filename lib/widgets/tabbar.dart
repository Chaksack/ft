import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            TabBar(indicator: BoxDecoration(color: Colors.red), tabs: [
              Tab(
                text: 'Settlements',
              ),
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Collections',
              ),
            ]),
          ],
        ),
      ),

      // body: TabBarView(children: [
      //   Icon(Icons.apps),
      //   Icon(Icons.movie),
      //   Icon(Icons.games),
      //         ],) ,
    );
  }
}
