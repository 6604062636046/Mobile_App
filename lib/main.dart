import 'dart:math';

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
              onPressed: () {
                debugPrint('icon2 pressed');
              },
            ),
            IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  debugPrint('icon3 pressed');
                })
          ],
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ),
        ),
        body: Center(
            child: Column(
          children: [
            const Text('Hello CS MB Test'),
            const TextField(
              decoration: InputDecoration(
                //กำหนดสไตล์รูปแบบ
                border: OutlineInputBorder(), //มีเส้นกรอบ
                labelText: 'Username',
                hintText: 'Enter your name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  child: Image.network(
                    'https://kpop-center.com/wp-content/uploads/2024/09/aespa_main-2.png',
                    height: 120,
                  ),
                ),
                const Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'aespa No.1',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('feopwge;rher[jph6gj5+6ft4j6detghrkyjjj]'),
                    Text('gjoiergwpgi[4wjjoeov,sogkgkappge[rh]]'),
                  ],
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 237, 243, 247),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFaaaaaa),
                      spreadRadius: 2,
                      blurRadius: 6,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: const Text(
                'History',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Card(
              color: Colors.lightGreenAccent,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 66.0,
                ),
                child: Text(
                  'Balance: 50 THB',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                    'https://ichef.bbci.co.uk/news/800/cpsprodpb/F1F2/production/_118283916_b19c5a1f-162b-410b-8169-f58f0d153752.jpg.webp',
                    height: 80,
                    width: 80),
                Image.network(
                    'https://ichef.bbci.co.uk/news/800/cpsprodpb/F1F2/production/_118283916_b19c5a1f-162b-410b-8169-f58f0d153752.jpg.webp',
                    height: 80,
                    width: 80),
                Image.network(
                    'https://ichef.bbci.co.uk/news/800/cpsprodpb/F1F2/production/_118283916_b19c5a1f-162b-410b-8169-f58f0d153752.jpg.webp',
                    height: 80,
                    width: 80),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            /*Image.network(
                'https://ichef.bbci.co.uk/news/800/cpsprodpb/F1F2/production/_118283916_b19c5a1f-162b-410b-8169-f58f0d153752.jpg.webp',
                height: 130),
            Image.asset(
              'assets/images/1.jpg',
              width: 120,
            ),*/
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