import 'package:flutter/material.dart';

import 'components/Body3.dart';
class NewPswd extends StatelessWidget {
  @override
  static String routename="/newpswd";
  Widget build(BuildContext context) {
     
      return Scaffold(
      appBar: AppBar(
        title: Text("New Password"),
      ),
      body: Body3(),
    );
  }
}