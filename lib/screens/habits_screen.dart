import 'package:flutter/material.dart';
import '../main.dart';

class HabitDetailPage extends StatelessWidget {
  final String habitName;

  HabitDetailPage({required this.habitName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(habitName)),
      body: Center(
        child: Text('Detay sayfası for $habitName'),
      ),
    );
  }
}
