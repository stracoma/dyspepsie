// fibroscopie.dart

import 'package:flutter/material.dart';

class Fibroscopie extends StatelessWidget {
  const Fibroscopie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(
          'CAT devant une dyspepsie',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Indication de',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'la fibroscopie',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
