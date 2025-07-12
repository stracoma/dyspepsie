import 'package:dyspepsie/traitementHp.dart';
import 'package:flutter/material.dart';
import 'fibroscopie.dart';
import 'hp.dart';
import 'syndrome.dart';
import 'sde.dart';
import 'sdp.dart';

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
      title: 'Dyspepsie',
      home: Scaffold(
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
              SizedBox(height: 20),
              Text(
                'Mes vifs remerciements à :',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[800],
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pr M.Benazzouz',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.purple[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'younesbis@doctor.com',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
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
        '/sde': (context) => Sde(),
        '/sdp': (context) => Sdp(),
      },
    );
  }
}
