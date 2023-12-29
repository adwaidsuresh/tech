import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tec/view/main_page.dart';
import 'package:tec/view/profile.dart';

class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    final pagecontoller = PageController();
    final int selectedindex = 0;

    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pagecontoller,
        children: const [MainPage(), Text('2'), Profile()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedindex,
        onTap: (value) {
          pagecontoller.animateToPage(value,
              duration: Duration(microseconds: 300), curve: Curves.linear);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Profile')
        ],
        selectedItemColor: Colors.orange,
      ),
    );
  }
}
