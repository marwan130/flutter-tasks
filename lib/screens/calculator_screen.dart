import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = "";

  void _calculateSum() {
    final int num1 = int.tryParse(_num1Controller.text) ?? 0;
    final int num2 = int.tryParse(_num2Controller.text) ?? 0;
    setState(() {
      _result = "Sum: ${num1 + num2}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _num1Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter first number'),
          ),
          TextField(
            controller: _num2Controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Enter second number'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _calculateSum,
            child: Text('Calculate'),
          ),
          SizedBox(height: 20),
          Text(
            _result,
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
