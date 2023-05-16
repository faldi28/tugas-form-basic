import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PolaBintang(),
  ));
}

class PolaBintang extends StatefulWidget {
  @override
  _StarPatternState createState() => _StarPatternState();
}

class _StarPatternState extends State<PolaBintang> {
  TextEditingController textController = TextEditingController();
  List<String> starPatterns = [];

  void generateStarPatterns(int n) {
    starPatterns.clear();
    for (int i = 1; i <= n; i++) {
      String pattern = '*' * i;
      starPatterns.add(pattern);
    }
  }

  void resetPatterns() {
    textController.clear();
    starPatterns.clear();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pola Bintang'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: textController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan nilai n',
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                int n = int.parse(textController.text);
                generateStarPatterns(n);
                setState(() {});
              },
              child: Text('Tampilkan'),
            ),
            SizedBox(height: 5.0),
            ElevatedButton(
              onPressed: resetPatterns,
              child: Text('Reset'),
            ),
            SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: starPatterns.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  starPatterns[index],
                  style: TextStyle(fontSize: 20.0),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
