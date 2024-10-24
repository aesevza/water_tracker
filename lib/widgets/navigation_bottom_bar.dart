import 'package:flutter/material.dart';
import 'package:water_tracker_flutter/screens/input_screen.dart';
import 'package:water_tracker_flutter/screens/settings_screen.dart';
import 'package:water_tracker_flutter/screens/statistics_screen.dart';

class MyNavigationButtonBar extends StatefulWidget {
  const MyNavigationButtonBar({super.key});

  @override 
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyNavigationButtonBar> {
int _selectedIndex = 0; 


  final List<Widget> _screens = [
    const InputScreen(), 
    const SettingsScreen(), 
    const StatisticsScreen(), 
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.water, color: Colors.white,), label: 'Трекер', backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart), label: 'Статистика'),
        ],
        currentIndex: _selectedIndex, 
        onTap: _onItemTapped, 
        selectedItemColor: Colors.white, 
        unselectedItemColor: Colors.white70, 
      ),
    );
  }
}
