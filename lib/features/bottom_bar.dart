import 'package:flutter/material.dart';
import 'package:food_delivery/features/home_page.dart';

import '../core/widgets/custom_app_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;
  List<Widget> bodyOptions = [
    HomePage(),
    const Center(child: Text("Fav")),
    const Center(
      child: Text("Profile"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        drawer: const Drawer(),
        appBar: const CustomAppBar(),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Fav"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          ]),
      body: bodyOptions[selectedIndex],
    );
  }
}
