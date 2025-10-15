import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var arrColor = [
      Colors.orange,
      Colors.lightGreen,
      Colors.black12,
      Colors.blue,
      Colors.black,
      Colors.grey,
      Colors.brown,
      Colors.cyan,
      Colors.red,
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orange, title: Text('Hello')),
        body: GridView.builder(
          // jodi dorker hoy ta hola (SliverGridDelegateWithMaxCrossAxisExtend) dita pari
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            // Tokhon (maxCrossAxisExtend: 100) dita hoba
            crossAxisCount: 3,
            crossAxisSpacing: 11,
            mainAxisSpacing: 11,
          ),
          itemCount: arrColor.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(color: arrColor[index],);
          },
        ),
      ),
    );
  }
}
