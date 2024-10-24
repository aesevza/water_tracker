import 'package:flutter/material.dart';

class ReminderToggle extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const ReminderToggle({
    super.key,
    required this.initialValue,
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => _ReminderToggleState();
}

class _ReminderToggleState extends State<ReminderToggle> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _value,
      onChanged: (newValue) {
        setState(() {
          _value = newValue;
          widget.onChanged(newValue);
        });
      },
    );
  }
}
