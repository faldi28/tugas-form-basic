import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LuasLingkaran(),
  ));
}

class LuasLingkaran extends StatefulWidget {
  @override
  _LuasLingkaranState createState() => _LuasLingkaranState();
}

class _LuasLingkaranState extends State<LuasLingkaran> {
  TextEditingController _radiusController = TextEditingController();
  String _luasText = '';

  void _hitungLuas() {
    setState(() {
      double? radius = double.tryParse(_radiusController.text);
      if (radius != null) {
        double luas = 3.14 * radius * radius;
        _luasText = 'Luas: ${luas.toStringAsFixed(2)}';
      } else {
        _luasText = 'Input tidak valid';
      }
    });
  }

  void _reset() {
    setState(() {
      _radiusController.clear();
      _luasText = '';
    });
  }

  @override
  void dispose() {
    _radiusController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Luas Lingkaran'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Jari-Jari',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _hitungLuas,
              child: Text('Hitung Luas'),
            ),
            SizedBox(height: 20),
            Text(
              _luasText,
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
