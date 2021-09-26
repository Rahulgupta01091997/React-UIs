import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:insta/utils.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key key}) : super(key: key);
  @override
  _PostPage createState() => _PostPage();
}

class _PostPage extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Image.asset(
                      'assets/instagram.png',
                      color: Colors.white,
                      width: 130,
                      height: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.add_box_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        const SizedBox(width: 20.0),
                        Stack(
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                              size: 30.0,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ),
                                  color: Colors.red,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 120.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Colors.white),
                                  padding: const EdgeInsets.all(3.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100.0),
                                    child:
                                        Image.asset('assets/users/rahul.jpg'),
                                  ),
                                ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 4,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                          ),
                                          color: Colors.lightBlue,
                                        ),
                                        child: RaisedButton(
                                            onPressed: () {},
                                            color: Colors.indigo,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 1, vertical: 2),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 20,
                                            ))))
                              ],
                            ),
                            const SizedBox(height: 4.0),
                            Text(
                              "Your Story",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/0.jpeg",
                          name: "user1",
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/1.jpeg",
                          name: "user2",
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/2.jpeg",
                          name: "user3",
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/0.jpeg",
                          name: "user1",
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/1.jpeg",
                          name: "user2",
                        ),
                        const SizedBox(width: 16.0),
                        Story(
                          image: "assets/users/2.jpeg",
                          name: "user3",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 2.0,
                color: Colors.white.withOpacity(0.2),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Post(
                      userName: 'rahulraina426',
                      userImage: 'assets/users/rahul.jpg',
                      image: 'assets/posts/raina1.png',
                    ),
                    Post(
                      userName: 'rahulraina426',
                      userImage: 'assets/users/rahul.jpg',
                      image: 'assets/posts/1.png',
                    ),
                    Post(
                      userName: 'rahulraina426',
                      userImage: 'assets/users/rahul.jpg',
                      image: 'assets/posts/wallpaper.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: instagramColors,
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
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

class Post extends StatelessWidget {
  final String userImage;
  final String userName;
  final String image;

  const Post({
    Key key,
    this.userName,
    this.userImage,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, bottom: 10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.asset(userImage),
                      ),
                    ),
                  ),
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 15.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            filterQuality: FilterQuality.high,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/heart.png',
                    color: Colors.white,
                    height: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  const SizedBox(width: 16.0),
                  Transform.rotate(
                    angle: 0,
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Liked by abhi_07.07.81 and 156 others",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            userName + "   07 + 03 = PERFECT 10",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Show comments",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "21 minutes ago",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
              fontSize: 10.0,
            ),
          ),
        )
      ],
    );
  }
}
