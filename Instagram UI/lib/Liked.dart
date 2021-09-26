import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class Liked extends StatefulWidget {
  const Liked({Key key}) : super(key: key);
  @override
  _Liked createState() => _Liked();
}

class _Liked extends State<Liked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Liked"),
    );
  }
}
