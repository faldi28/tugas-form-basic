import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BilanganPrima(),
  ));
}

class BilanganPrima extends StatefulWidget {
  @override
  _PrimeNumberCheckerState createState() => _PrimeNumberCheckerState();
}

class _PrimeNumberCheckerState extends State<BilanganPrima> {
  TextEditingController textController = TextEditingController();
  String result = '';

  bool isPrime(int number) {
    if (number <= 1) {
      return false;
    }

    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) {
        return false;
      }
    }

    return true;
  }

  void checkPrimeNumber(int number) {
    if (isPrime(number)) {
      setState(() {
        result = 'Nilai bilangan yang dimasukkan adalah bilangan prima.';
      });
    } else {
      setState(() {
        result = 'Nilai bilangan yang dimasukkan bukan bilangan prima.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilangan Prima'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan bilangan',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                int number = int.parse(textController.text);
                checkPrimeNumber(number);
              },
              child: Text('Periksa'),
            ),
            SizedBox(height: 20.0),
            Text(result),
          ],
        ),
      ),
    );
  }
}
