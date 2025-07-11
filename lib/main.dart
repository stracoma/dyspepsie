import 'package:dyspepsie/traitementHp.dart';
import 'package:flutter/material.dart';
import 'fibroscopie.dart';
import 'hp.dart';
import 'syndrome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[800],
            foregroundColor: Colors.white,
            fixedSize: Size(200, 50),
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      title: 'dyspepsie',
      home: Scaffold(
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
                'DYSPEPSIE',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Signes d\'alarme',
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
              SizedBox(height: 20),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/fibroscopie');
                    },
                    child: Text('Présents'),
                  );
                },
              ),
              SizedBox(height: 10),
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/hp');
                    },
                    child: Text('Absents'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      routes: {
        '/fibroscopie': (context) => Fibroscopie(),
        '/hp': (context) => Hp(),
        '/traitement': (context) => TraitementHp(),
        '/syndrome': (context) => Syndrome(),
      },
    );
  }
}
