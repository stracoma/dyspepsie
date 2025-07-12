// syndrome.dart

import 'package:flutter/material.dart';

class Syndrome extends StatelessWidget {
  const Syndrome({super.key});

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
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Syndrome de',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'douleur épigastrique',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sde');
                  },
                  child: Text('SDE'),
                );
              },
            ),
            SizedBox(height: 30),
            Text(
              'Syndrome de',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'détresse postprandiale',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sdp');
              },
              child: Text('SDP'),
            ),
          ],
        ),
      ),
    );
  }
}
