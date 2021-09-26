import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  List<String> ProfileImages = [
    "assets/posts/raina1.png",
    "assets/posts/1.png",
    "assets/posts/wallpaper.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Builder(
            builder: (context) => SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "rahulraina426",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.expand_more,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0, top: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_box_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            const SizedBox(width: 20.0),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 100,
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 90.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: Colors.grey[300], width: 1)),
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 1,
                                          color: Colors.black,
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/users/rahul.jpg"))),
                                  )),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "120",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text("Posts",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("1,640",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Followers",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))
                                ],
                              )),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("744",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text("Following",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white))
                                ],
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rahul Gupta",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Sport & recreation",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "I Run on Caffeine, Sarcasms and Lifting Weights.",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.all(7),
                                side: BorderSide(
                                    color: Colors.grey[350], width: 1)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            child: Text(
                              "Ad Tools",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.all(7),
                                side: BorderSide(
                                    color: Colors.grey[350], width: 1)),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            child: Text(
                              "Insights",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.all(7),
                                side: BorderSide(
                                    color: Colors.grey[350], width: 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 110.0,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Story(
                              image: "assets/posts/1.png",
                              name: "Do More",
                            ),
                            const SizedBox(width: 16.0),
                            Story(
                              image: "assets/posts/raina1.png",
                              name: "Raina",
                            ),
                            const SizedBox(width: 16.0),
                            Story(
                              image: "assets/posts/wallpaper.jpg",
                              name: "7+3",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TabBar(
                    indicatorColor: Colors.white,
                    indicatorWeight: 3,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey[350],
                    tabs: [
                      Tab(
                        icon: Icon(
                          Icons.apps_outlined,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.play_arrow_outlined,
                          size: 30,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.assignment_ind_outlined,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      children: List.generate(ProfileImages.length, (index) {
                        return Padding(
                            padding: EdgeInsets.all(1),
                            child: Container(
                              height: 40,
                              child: Image.asset(
                                ProfileImages[index],
                                filterQuality: FilterQuality.high,
                                fit: BoxFit.cover,
                              ),
                            ));
                      }),
                    ),
                  )
                  // GridView.builder(
                  //   itemCount: ProfileImages.length,
                  //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 3),
                  //   itemBuilder: (context, index) {
                  // return Padding(
                  //   padding: EdgeInsets.all(1),
                  //   child: Container(
                  //     height: 40,
                  //     color: Colors.red,
                  //   ),
                  //     );
                  //   },
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}

class Story extends StatelessWidget {
  final String image;
  final String name;

  const Story({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.grey[350], width: 1)),
          padding: const EdgeInsets.all(3.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 4,
                      color: Colors.black,
                    ),
                    image: DecorationImage(image: AssetImage(image))),
              )),
        ),
        const SizedBox(height: 4.0),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
          ),
        )
      ],
    );
  }
}
