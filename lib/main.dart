import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 91, 252, 70)),
        //colorScheme: Color.amber),
        useMaterial3: true,
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 223, 142, 255)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: Column(
          children: [
            Text(
              'Hello CS MB Test',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text('kmutnb'),
            Text('BKK TH'),
          ],
        ),
      ),
    );
  }
}
