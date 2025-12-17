import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: (){
                debugPrint('icon2 pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: (){
                debugPrint('icon3 pressed');
              }
            )
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){
              debugPrint('leading icon pressed');
            },
          ),
        ),
        body: Center(
            child: Column(
          children: [
            Text('Hello CS MB Test'),
            Text('kmutnb'),
            Image.network('https://ichef.bbci.co.uk/news/800/cpsprodpb/F1F2/production/_118283916_b19c5a1f-162b-410b-8169-f58f0d153752.jpg.webp',
            height:180),
            ElevatedButton(
              onPressed: () {
                debugPrint("btn pressed");
              },
              child: Text(
                'OK button',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
