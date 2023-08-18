import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myproject/screens/homeScreen.dart';
import 'package:myproject/screens/screen1.dart';
import 'package:myproject/screens/screen2.dart';
import 'package:myproject/screens/screen3.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int mycurrentIndex = 0;

   List Screens =[
    HomeScreen() ,Screen1(),Screen2(),Screen3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[mycurrentIndex],
         bottomNavigationBar: BottomNavigationBar(
        // elevation: 0,
        currentIndex: mycurrentIndex,
        // showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (myNewIndex) => {
          setState(() {
            mycurrentIndex = myNewIndex;
          }),
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bookOpen), label: "Learn"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_cozy_outlined), label: "Hub"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.message), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ],
        // backgroundColor: Colors.red,
      ),
    );
  }
}