import 'package:flutter/material.dart';
import 'package:water_tracker_flutter/widgets/navigation_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: //const InputScreen(),
      const MyNavigationButtonBar(),
    );
  }
}
