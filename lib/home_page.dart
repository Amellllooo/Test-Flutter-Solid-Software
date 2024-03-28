import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.white;
  int _bonusPoints = 0;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
      _bonusPoints += 1;
    });
  }

  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App Solid Software(Melnykov)'),
      ),
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Привіт',
                  style: TextStyle(fontSize: 34),
                ),
                SizedBox(height: 16),
                Text(
                  'Бонусні бали: $_bonusPoints',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
