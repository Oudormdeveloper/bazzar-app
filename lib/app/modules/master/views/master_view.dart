import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class MasterView extends GetView<MasterController> {
  final GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: cWhite,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: 'Messages',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        if (index == 0) {
          return CupertinoTabView(
            navigatorKey: firstTabNavKey,
            builder: (BuildContext context) => HomeView(),
          );
        } else {
          return CupertinoTabView(
            navigatorKey: thirdTabNavKey,
            builder: (BuildContext context) => MySecondTab(),
          );
        }
      },
    );
  }
}

class MyFirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }
}

class MySecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}
