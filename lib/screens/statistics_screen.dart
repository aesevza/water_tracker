import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Статистика "В разработке"',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Статистика вашего потребления воды будет здесь',
                style: TextStyle(
                    fontSize: 16.0, color: Color.fromARGB(255, 0, 0, 0)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: () {},
                child: const Text('Просмотр ежедневной статистики', style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: () {},
                child: const Text('Просмотр еженедельной статистики',style: TextStyle(color: Colors.white),),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: () {},
                child: const Text('Просмотр ежемесячной статистики',style: TextStyle(color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
