import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FibonacciPola(),
  ));
}

class FibonacciPola extends StatefulWidget {
  @override
  _FibonacciTriangleState createState() => _FibonacciTriangleState();
}

class _FibonacciTriangleState extends State<FibonacciPola> {
  TextEditingController textController = TextEditingController();
  List<List<int>> fibonacciTriangle = [];

  void generateFibonacciTriangle(int n) {
    fibonacciTriangle.clear();

    for (int i = 0; i < n; i++) {
      List<int> row = [];
      for (int j = 0; j <= i; j++) {
        if (j < 2) {
          row.add(j);
        } else {
          int nextNumber = row[j - 1] + row[j - 2];
          row.add(nextNumber);
        }
      }
      fibonacciTriangle.add(row);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segitiga Fibonacci'),
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
                labelText: 'Masukkan jumlah baris',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                int n = int.parse(textController.text);
                generateFibonacciTriangle(n);
                setState(() {});
              },
              child: Text('Tampilkan'),
            ),
            SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: fibonacciTriangle.length,
              itemBuilder: (BuildContext context, int index) {
                List<int> row = fibonacciTriangle[index];
                String rowText = row.map((num) => num.toString()).join(' ');
                return Text(
                  rowText,
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
