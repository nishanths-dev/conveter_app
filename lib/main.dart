import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var nishanth = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Enter the value '),
      ),
      body: Column(
        children: [
          TextField(
              controller: nishanth,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder())),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  result = int.parse(nishanth.text) * 1000;
                });
              },
              child: Text('convert to grams')),
          Text(result.toString()),
          Text('grams') 
        ],
      ),
    );
  }
}

