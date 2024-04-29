import 'package:flutter/material.dart';
import 'package:shoutsy_1/Mobile/Influencers/Swipe_Brands/swipe_tab1.dart';

class SwipeBrands extends StatefulWidget {
  const SwipeBrands({super.key});

  @override
  State<SwipeBrands> createState() => _SwipeBrandsState();
}

class _SwipeBrandsState extends State<SwipeBrands> {
  int _selectedIndex = 0;
  final List<Widget> _list = [
    SwipeTab1(),
    const Center(
      child: Text("Messages"),
    ),
    const Center(
      child: Text("Social"),
    ),
    const Center(
      child: Text("edit profile"),
    ),
    const Center(
      child: Text("Profile"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _list[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            _selectedIndex = value;
            setState(() {});
          },
          selectedFontSize: 30,
          unselectedFontSize: 30,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Image.asset(
                      "assets/home2.png",
                    )
                  : Image.asset(
                      "assets/home1.png",
                    ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Image.asset("assets/messages.png",
                  color: _selectedIndex == 1
                      ? Colors.blue
                      : const Color.fromARGB(255, 0, 0, 0)),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Image.asset("assets/contacts.png",
                    color:
                        _selectedIndex == 2 ? Colors.blue : Colors.transparent),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/profile.png",
                    color:
                        _selectedIndex == 3 ? Colors.blue : Colors.transparent),
                label: ""),
            BottomNavigationBarItem(
                icon: Image.asset("assets/own.png",
                    color:
                        _selectedIndex == 4 ? Colors.blue : Colors.transparent),
                label: "")
          ]),
    );
  }
}
