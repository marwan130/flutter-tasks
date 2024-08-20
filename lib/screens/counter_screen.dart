import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _decrementCounter,
                child: Text('-'),
              ),
              SizedBox(width: 20),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('+'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
