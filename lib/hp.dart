// hp.dart
import 'package:flutter/material.dart';

class Hp extends StatelessWidget {
  const Hp({super.key});

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
              'Recherche HP',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue[800],
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/traitement');
                  },
                  child: Text('Présent'),
                );
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/syndrome');
              },
              child: Text('Absent'),
            ),
          ],
        ),
      ),
    );
  }
}
