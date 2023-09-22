import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[600],
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'ريان',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Ruwudu',
              color: Colors.black,
              fontWeight:FontWeight.bold, 
            ),
            ),
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/amr.jpg'),
            ),
            Text(
              'عمرو عبدالعزيز',
              style: TextStyle(
                fontSize: 39.0,
                fontFamily: 'Ruwudu',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'مبرمج تطبيقات',
              style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Ruwudu',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              ),
            ),
            Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.white,
                child: ListTile(
                     leading:Icon(
                      Icons.phone,
                      size: 32.0,
                      color: Colors.red,
                    ),
                    title: Text(
                      '+20 121 200 4141',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                      ),
                ), 
                ),
            Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                      Icons.email,
                      size: 32.0,
                      color: Colors.red,
                    ),
                    title: Text(
                      'abdelazizamr92@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                    ),
                ), 
                ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}