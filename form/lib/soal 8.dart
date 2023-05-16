import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PolaBintangTerbalik(),
  ));
}

class PolaBintangTerbalik extends StatefulWidget {
  @override
  _ReversedStarPatternState createState() => _ReversedStarPatternState();
}

class _ReversedStarPatternState extends State<PolaBintangTerbalik> {
  TextEditingController textController = TextEditingController();
  List<String> starPatterns = [];

  void generateReversedStarPatterns(int n) {
    starPatterns.clear();
    for (int i = n; i >= 1; i--) {
      String pattern = '*' * i;
      starPatterns.add(pattern);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pola Bintang Terbalik'),
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
                labelText: 'Masukkan nilai n',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                int n = int.parse(textController.text);
                generateReversedStarPatterns(n);
                setState(() {});
              },
              child: Text('Tampilkan'),
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
