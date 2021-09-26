import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';
import 'PostPage.dart';
import 'Search.dart';
import 'Reels.dart';
import 'Liked.dart';
import 'Profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        canvasColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _UserHomePage createState() => _UserHomePage();
}

class _UserHomePage extends State<HomePage> {
  int index = 0;

  static List<Widget> _widgetOption = <Widget>[
    PostPage(),
    Search(),
    Reels(),
    Liked(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        onTap: (int index) {
          print(index);
          setState(() {
            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "reel",
            icon: Icon(Icons.slideshow_outlined),
          ),
          BottomNavigationBarItem(
            label: "liked",
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: _widgetOption[index],
    );
  }
}
