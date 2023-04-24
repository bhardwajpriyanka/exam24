import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';


class tabbar_screen extends StatefulWidget {
  const tabbar_screen({Key? key}) : super(key: key);

  @override
  State<tabbar_screen> createState() => _tabbar_screenState();
}

class _tabbar_screenState extends State<tabbar_screen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CupertinoTabScaffold(
          tabBar:  CupertinoTabBar(
            height: 70,
            items: [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar),label: "calender"),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(""),
            );
          },
        )
    );
  }
}