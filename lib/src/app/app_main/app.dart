import 'package:fitdaily/src/app/home/home.dart';
import 'package:fitdaily/src/app/physical_parameters/physical_parameters.dart';
import 'package:fitdaily/src/app/reasons/reasons.dart';
import 'package:fitdaily/src/app/strength/strength.dart';
import 'package:fitdaily/src/app/workout/workout.dart';
import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _tabs = [
    {
      'label': '',
      'icon': 'assets/images/home.png',
      'widget': Home(),
    },
    {
      'label': '',
      'icon': 'assets/images/search.png',
      'widget': Strength(),
    },
    {
      'label': '',
      'icon': 'assets/images/add_new.png',
      'widget': Workout(),
    },
    {
      'label': '',
      'icon': 'assets/images/menu.png',
      'widget': PhysicalParameters(),
    },
    {
      'label': '',
      'icon': 'assets/images/profile.png',
      'widget': Reasons(),
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs.map((tab) => tab['widget'] as Widget).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs.map((tab) {
          return BottomNavigationBarItem(

            backgroundColor: Color(0xff0d0d0d),
            icon: Container(

              margin: EdgeInsets.only(top:10),
                child: ImageIcon(AssetImage(tab['icon']))),
            label: tab['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xfffdae07),
        unselectedItemColor: Color(0xffffffff),
        onTap: _onItemTapped,
      ),
    );
  }
}
