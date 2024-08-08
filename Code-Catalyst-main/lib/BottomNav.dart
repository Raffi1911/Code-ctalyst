import 'package:CodeCatalyst/questions.dart';
import 'package:CodeCatalyst/setting.dart';
import 'package:flutter/material.dart';
import 'prof.dart';
import 'home.dart';
import 'notifications.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  PageController pageController = PageController();
  int initial_index = 0;

  void _onPageChanged() {
    setState(() {
      initial_index = pageController.page!.round();
    });
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(_onPageChanged);
  }

  void onTap(int index) {
    setState(() {
      initial_index = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: PageView(
        controller: pageController,
        children: [
          Home(),
          Questions(),
          Notifications(),
          Setting(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Color(0xffcfdef3),
            child: Divider(
              color: Colors.black,
            ),
          ),
          BottomNavigationBar(
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.question_answer_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_sharp), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: initial_index,
            backgroundColor: Color(0xffcfdef3),
            selectedItemColor: Colors.blue.shade900,
            unselectedItemColor: Colors.blueAccent.shade200,
            onTap: onTap,
            elevation: 0,
          ),
        ],
      ),
    );
  }
}