import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BilanganFibonacci(),
  ));
}

class BilanganFibonacci extends StatefulWidget {
  @override
  _FibonacciScreenState createState() => _FibonacciScreenState();
}

class _FibonacciScreenState extends State<BilanganFibonacci> {
  TextEditingController _numberController = TextEditingController();
  List<int> _fibonacciNumbers = [];

  void _generateFibonacci() {
    int n = int.tryParse(_numberController.text) ?? 0;

    if (n <= 0) {
      _fibonacciNumbers.clear();
    } else if (n == 1) {
      _fibonacciNumbers = [1];
    } else if (n == 2) {
      _fibonacciNumbers = [1, 1];
    } else {
      _fibonacciNumbers = [1, 1];
      for (int i = 2; i < n; i++) {
        int nextNumber = _fibonacciNumbers[i - 1] + _fibonacciNumbers[i - 2];
        _fibonacciNumbers.add(nextNumber);
      }
    }

    setState(() {});
  }

  void _reset() {
    setState(() {
      _numberController.text = '';
      _fibonacciNumbers.clear();
    });
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilangan Fibonacci'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Jumlah Bilangan',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _generateFibonacci,
              child: Text(' Hasil'),
            ),
            SizedBox(height: 20),
            Text(
              'Bilangan Fibonacci:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              _fibonacciNumbers.join(' '),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
