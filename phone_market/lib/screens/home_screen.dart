import 'package:flutter/material.dart';
import 'package:phone_market/constants.dart';

import '../widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: HomeAppBar(),
      body: Homebody(),
    );
  }

  AppBar HomeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
         'مرحبا بكم في متجر الالكترونيات',
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
      actions: [
        IconButton(
         icon: Icon(Icons.menu),
         onPressed: (){},
        ),
      ],
    );
  }
}
