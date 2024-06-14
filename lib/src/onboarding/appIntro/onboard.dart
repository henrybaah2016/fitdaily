import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'intro_widget.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {


  final PageController  _pageController = PageController();

  int _activePage = 0;

  void onNextPage(){
    if(_activePage  < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,);
    }
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'color': '#0d0d0d',
      'title': 'Crush Daily Goals',
      'image': 'assets/images/user_three.png',
      'description':  "Set, Sweat, Succeed",
      'skip': true
    },
    {
      'color': '#0d0d0d',
      'title': 'Wellness Anywhere',
      'image': 'assets/images/user_two.png',
      'description': 'No Gym Needed',
      'skip': true
    },
    // {
    //   'color': '#0d0d0d',
    //   'title': 'Boldly Step out',
    //   'image': 'assets/images/user_one.png',
    //   'description': 'Exercise on the App',
    //   'skip': true
    // },
    {
      'color': '#0d0d0d',
      'title': 'Serious Gains',
      'image': 'assets/images/user_four.png',
      'description': 'Anytime, Anywhere',
      'skip': false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              controller: _pageController,
              itemCount: _pages.length,
              scrollBehavior: AppScrollBehavior(),
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemBuilder: (BuildContext context, int index){
                return IntroWidget(
                  index: index,
                  color: _pages[index]['color'],
                  title: _pages[index]['title'],
                  description: _pages[index]['description'],
                  image: _pages[index]['image'],
                  skip: _pages[index]['skip'],
                  onTab: onNextPage,
                );
              }
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 1.18,
            right: 0,
            left: 0,
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildIndicator()
                )
              ],
            ),
          )

        ],
      ),
    );
  }

  List<Widget> _buildIndicator() {
    final indicators =  <Widget>[];

    for(var i = 0; i < _pages.length; i++) {

      if(_activePage == i) {
        indicators.add(_indicatorsTrue());
      }else{
        indicators.add(_indicatorsFalse());
      }
    }
    return  indicators;
  }

  Widget _indicatorsTrue() {
    final String color;
    if(_activePage == 0){
      color = '#fdae07';
    } else  if(_activePage ==  1) {
      color = '#fdae07';
    } else {
      color = '#fdae07';
    }

    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 8,
      width: 42,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: hexToColor(color),
      ),
    );
  }

  Widget _indicatorsFalse() {
    return AnimatedContainer(
      duration: const Duration(microseconds: 300),
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffe7e7e7),
      ),
    );
  }
}