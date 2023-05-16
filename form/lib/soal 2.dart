import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LuasSegitiga(),
  ));
}

class LuasSegitiga extends StatefulWidget {
  @override
  _LuasSegitigaState createState () => _LuasSegitigaState ();
}

class _LuasSegitigaState extends State<LuasSegitiga>{
  TextEditingController _baseController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  String _resultText = '';

  void _calculateLuasSegitiga() {
    double base = double.tryParse(_baseController.text) ?? 0.0;
    double height = double.tryParse(_heightController.text) ?? 0.0;
    double luas = 0.5 * base * height;
    setState(() {
      _resultText = 'Luas Segitiga: $luas';
    });
  }

  void _reset() {
    setState(() {
      _baseController.text = '';
      _resultText = '';
      _heightController.text ='';
    });
  }

  @override
  void dispose() {
    _baseController.dispose();
    _heightController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Segitiga'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _baseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Panjang Alas',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateLuasSegitiga,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Text(
              _resultText,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5, width:5 ),
            ElevatedButton(
                onPressed: _reset,
                child: Text('Reset')
            ),
          ],
        ),
      ),
    );
  }
}

