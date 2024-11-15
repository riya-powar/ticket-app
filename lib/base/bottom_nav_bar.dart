import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_app/screens/home_screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //list is iterated using index
  final appScreens=[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile"))
  ];

  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      //const Center(child: Text("Ticket Info"),)
    
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), 
          activeIcon:Icon(Icons.home),
          label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          activeIcon:Icon(Icons.search),
          label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),
          activeIcon:Icon(Icons.airplane_ticket),
           label:"tickets"),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          activeIcon:Icon(Icons.person),
           label: "profile"),
        ],
      ),
    );
  }
}