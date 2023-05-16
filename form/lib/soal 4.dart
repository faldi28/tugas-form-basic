import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: nilai(),
  ));
}

class nilai extends StatefulWidget {
  @override
  _GradeConverterScreenState createState() => _GradeConverterScreenState();
}

class _GradeConverterScreenState extends State<nilai> {
  TextEditingController _scoreController = TextEditingController();
  String _gradeText = '';

  void _convertToGrade() {
    double score = double.tryParse(_scoreController.text) ?? 0.0;
    String grade;
    if (score >= 80 && score <= 100) {
      grade = 'A';
    } else if (score >= 75 && score < 80) {
      grade = 'B+';
    } else if (score >= 70 && score < 75) {
      grade = 'B';
    } else if (score >= 65 && score < 70) {
      grade = 'C+';
    } else if (score >= 60 && score < 65) {
      grade = 'C';
    } else if (score >= 45 && score < 60) {
      grade = 'D';
    } else if (score >= 0 && score < 45) {
      grade = 'E';
    } else {
      grade = 'Nilai tidak valid';
    }
    setState(() {
      _gradeText = 'Grade: $grade';
    });
  }
  void _reset() {
    setState(() {
      _scoreController.text = '';
      _gradeText = '';
    });
  }

  @override
  void dispose() {
    _scoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konversi Nilai ke Grade'),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _scoreController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nilai Mentah',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _convertToGrade,
              child: Text('Konversi'),
            ),
            SizedBox(height: 20),
            Text(
              _gradeText,
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
