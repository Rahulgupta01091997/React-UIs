import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Search"),
    );
  }
}
