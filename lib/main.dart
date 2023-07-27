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
        title: Text(' Converter App '),
      ),
      body: Column(
        children: [
          TextField(
              controller: nishanth,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: 'enter the kilogram',
                  border: OutlineInputBorder())),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  result = int.parse(nishanth.text) * 1000;
                });
              },
              child: const Text('convert to grams')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                result.toString(),
                style: const TextStyle(fontSize: 50),
              ),
              const Text(
                'grams',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          )
        ],
      ),
    );
  }
}
