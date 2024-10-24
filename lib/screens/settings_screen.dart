import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _targetWater = 2000;
  double _reminderInterval = 60; // Интервал по умолчанию в минутах

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'Settings',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Установите ежедневную норму потребления воды:',
                style: TextStyle(
                    fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 24),
              Slider(
                activeColor: Colors.blue,
                min: 500,
                max: 5000,
                divisions: 9,
                value: _targetWater,
                onChanged: (newValue) {
                  setState(() {
                    _targetWater = newValue;
                  });
                },
                label: '${_targetWater.round()} ml',
              ),
               const SizedBox(height: 32.0),
              Text(
                'Выбранный интервал: ${_targetWater.round()} мл',
                style: const TextStyle(fontSize: 16.0),
              ),

               const SizedBox(height: 32.0),
              const Text(
                'Установите интервалы напоминаний:',
                style: TextStyle(
                    fontSize: 18.0, color: Color.fromARGB(255, 0, 0, 0)),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: 350,
                child: DropdownButton<double>(
                  isExpanded: true,
                  menuWidth: 350,
                  dropdownColor: Colors.white,
                  value: _reminderInterval,
                  items: const [
                    DropdownMenuItem(
                        value: 30,
                        child: Row(children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Каждые 30 минут')
                        ])),
                    DropdownMenuItem(
                        value: 60,
                        child: Row(children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Каждый час')
                        ])),
                    DropdownMenuItem(
                        value: 120,
                        child: Row(children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Каждые 2 часа')
                        ])),
                    DropdownMenuItem(
                        value: 180,
                        child: Row(children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Каждые 3 часа')
                        ])),
                    DropdownMenuItem(
                        value: 240,
                        child: Row(children: [
                          Icon(Icons.alarm),
                          SizedBox(
                            width: 12,
                          ),
                          Text('Каждые 4 часа')
                        ])),
                  ],
                  onChanged: (newValue) {
                    setState(() {
                      _reminderInterval = newValue ?? 60; // Значение по умолчанию
                    });
                  },
                  alignment: Alignment.centerLeft, 
                  focusColor: Colors.blue,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Выбранный интервал: ${_reminderInterval.round()} минут',
                style: const TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
