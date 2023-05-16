import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BilanganRandom(),
  ));
}
class BilanganRandom extends StatefulWidget {
  @override
  _GuessNumberGameState createState() => _GuessNumberGameState();
}

class _GuessNumberGameState extends State<BilanganRandom> {
  int?  randomNumber;
  int maxAttempts = 3;
  String message = '';
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    generateRandomNumber();
  }

  void generateRandomNumber() {
    Random random = Random();
    randomNumber = random.nextInt(99) + 1;
  }

  void checkGuess(int guess) {
    if (guess == randomNumber) {
      setState(() {
        message = 'Anda benar!';
      });
    } else if ((guess - randomNumber!).abs() > 20) {
      setState(() {
        message = 'Anda salah, tebakan anda terlalu tinggi';
      });
    } else {
      setState(() {
        message = 'Anda salah, tebakan anda terlalu rendah';
      });
    }
  }

  void makeGuess() {
    int guess = int.parse(textController.text);
    checkGuess(guess);
    textController.clear();
    maxAttempts--;

    if (maxAttempts == 0 || guess == randomNumber) {
      showGameOverDialog();
    }
  }

  void showGameOverDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Permainan Selesai'),
          content: Text('Anda tidak berhasil menebak angka dalam 3 kali percobaan.\nAngka yang benar adalah $randomNumber.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  maxAttempts = 3;
                  message = '';
                });
                generateRandomNumber();
              },
              child: Text('Main Lagi'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permainan Tebak Angka'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tebak angka antara 1 - 99',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Sisa percobaan: $maxAttempts',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: textController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tebakan Anda',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: makeGuess,
              child: Text('Tebak'),
            ),
            SizedBox(height: 20.0),
            Text(
              message,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
