import 'package:flutter/material.dart';
import 'sola 1.dart';
import 'soal 2.dart';
import 'soal 3.dart';
import 'soal 4.dart';
import 'soal 5.dart';
import 'soal 6.dart';
import 'soal 7.dart';
import 'soal 8.dart';
import 'soal 9.dart';
import 'soal 10.dart';


void main (List<String> args){
  runApp(new MaterialApp(
    home : MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State <MyApp> {
  void navigateToPage(String pageName) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => getPage(pageName)),
    );
  }
  Widget getPage(String pageName) {
    switch (pageName) {
      case 'soal 1':
        return GanjilGenap();
      case 'soal 2':
        return LuasSegitiga();
      case 'soal 3':
        return LuasLingkaran();
      case 'soal 4':
        return nilai();
      case 'soal 5':
        return BilanganFibonacci();
      case 'soal 6':
        return BilanganRandom();
      case 'soal 7':
        return PolaBintang();
      case 'soal 8':
        return PolaBintangTerbalik();
      case 'soal 9':
        return FibonacciPola();
      case 'soal 10':
        return BilanganPrima();
      default:
        return Container();
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar (
        title : Text("Menu Utama"),
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green[100],
      body: Padding (
        padding: EdgeInsets.all(20.0),
        child : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    navigateToPage('soal 1');
                  },
                  style:ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(200, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          letterSpacing: 1.5,
                          color: Colors.white
                      ),
                    ),
                  ),
                  child: Text('Soal 1'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 2');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 2'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 3');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 3'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 4');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 4'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 5');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 5'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 6');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 6'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 7');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 7'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 8');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 8'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 9');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 9'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  navigateToPage('soal 10');
                },
                style:ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(200, 50)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue[700]),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        letterSpacing: 1.5,
                        color: Colors.white
                    ),
                  ),
                ),
                child: Text('Soal 10'),
              ),
            ],
          ),
        ),
        ),
    );
  }
}