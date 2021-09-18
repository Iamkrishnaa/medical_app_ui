import 'package:challenge/const.dart';
import 'package:challenge/screens/home.dart';
import 'package:challenge/screens/schedule.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    //TODO: change this as per pages
    final _tabPages = <Widget>[
      const HomePage(),
      const HomePage(),
      const Schedule(),
      const HomePage(),
    ];
    final _bottomNavigationBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.message), label: "Messages"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.date_range_rounded), label: "Schedule"),
      const BottomNavigationBarItem(
          icon: Icon(Icons.settings), label: "Settings"),
    ];

    final bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.white,
      elevation: 0,
      fixedColor: kPrimaryPurple,
      items: _bottomNavigationBarItems,
      currentIndex: _currentTab,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTab = index;
        });
      },
    );
    return Scaffold(
      body: _tabPages[_currentTab],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
