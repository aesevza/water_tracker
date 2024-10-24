import 'package:flutter/material.dart';
import 'package:water_tracker_flutter/screens/input_screen.dart';
import 'package:water_tracker_flutter/screens/settings_screen.dart';
import 'package:water_tracker_flutter/screens/statistics_screen.dart';

class MyNavigationButtonBar extends StatefulWidget {
  const MyNavigationButtonBar({super.key});

  @override //create state
  State<StatefulWidget> createState() {
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<MyNavigationButtonBar> {
int _selectedIndex = 0; // Индекс выбранного элемента

  // Список экранов
  final List<Widget> _screens = [
    const InputScreen(), // Трекер
    const SettingsScreen(), // Настройки
    const StatisticsScreen(), // Статистика
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Обновляем индекс выбранного элемента
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex], // Отображаем текущий экран
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.water, color: Colors.white,), label: 'Трекер', backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
          BottomNavigationBarItem(icon: Icon(Icons.insert_chart), label: 'Статистика'),
        ],
        currentIndex: _selectedIndex, // Устанавливаем текущий индекс
        onTap: _onItemTapped, // Обработчик нажатия
        selectedItemColor: Colors.white, // Цвет текста для выбранного элемента
        unselectedItemColor: Colors.white70, // Цвет текста для невыбранных элементов
      ),
    );
  }
}
