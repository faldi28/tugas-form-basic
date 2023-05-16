import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GanjilGenap(),
  ));
}

class GanjilGenap extends StatefulWidget {
  @override
  _GanjilGenapScreenState createState() => _GanjilGenapScreenState();
}

class _GanjilGenapScreenState extends State<GanjilGenap> {
  TextEditingController _numberController = TextEditingController();
  String _resultText = '';

  void _checkNumber() {
    int number = int.tryParse(_numberController.text) ?? 0;

    setState(() {
      if (number % 2 == 0) {
        _resultText = 'Genap';
      } else {
        _resultText = 'Ganjil';
      }
    });
  }

  void _reset() {
    setState(() {
      _numberController.text = '';
      _resultText = '';
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
        title: Text('Bilangan Ganjil atau Genap'),
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
                labelText: 'Masukkan Bilangan',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _checkNumber,
              child: Text('Periksa'),
            ),
            SizedBox(height: 20),
            Text(
              _resultText,
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
