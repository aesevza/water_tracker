import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<StatefulWidget> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _controller = TextEditingController();
  int _waterAmount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Трекер воды',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 320.0,
                child: TextField(
                  style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.normal),
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 140, 140, 140),
                        fontWeight: FontWeight.normal),
                    hintText: 'Введите количество воды',
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      setState(() {
                        int newWaterAmount =
                            int.tryParse(_controller.text) ?? 0;
                        _waterAmount += newWaterAmount;
                        _controller.clear();
                      });
                    },
                    child: const Text(
                      'Добавить значение',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    onPressed: () {
                      // _controller.clear();
                      setState(() {
                        _waterAmount = 0;
                      });
                    },
                    child: const Text(
                      'Удалить значения',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                'Общее количество воды: $_waterAmount мл',
                style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 73, 73, 73)),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: <Widget>[
      //     FloatingActionButton(
      //       backgroundColor: Colors.blue,
      //       onPressed: () {
      //         setState(() {
      //           _waterAmount = 0;
      //         });
      //       },
      //       tooltip: 'Удаление всей истории ',
      //       child: const Icon(
      //         Icons.delete,
      //         color: Colors.white,
      //       ),
      //     ),
      //     const SizedBox(height: 16.0),
      //   ],
      // ),
    );
  }
}
