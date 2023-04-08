import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Homework',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Counter Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Simple Counter App',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Image.asset('assets/dash.png',
            height: 300,
            width: 276,
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: 60,
              width: 276,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  '$_counter',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
              ),
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Container(
              width: 60,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              child: ElevatedButton(
              onPressed: _decrementCounter,
              child: const Center(
                child : Icon(Icons.remove)
              )
              ),
            ),
             Container(
              margin: const EdgeInsets.only(left: 8,right: 8),
              width: 140,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.black87,
              ),
              child: ElevatedButton(
              onPressed: _resetCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.refresh),
                  Text("Reset",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )
                    ),
                ],
              )
              ),
            ),
             Container(
              width: 60,
              height: 52,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8)
              ),
              child: ElevatedButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add)
              ),
            ),
            ],
           ),
          ],
        ),
      ),
    );
  }
}
