import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text('Youtube'),
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/Youtube-logo-png-photo-0.png'),
        ),
      ),
    ),
    ),
  );
}
