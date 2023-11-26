import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8, top: 8, bottom: 8, right: 20),
                        child: Icon(Icons.send_rounded),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                TopLocation(),
                //post1
                PostItem("assets/images/gspp.jpg", "galatasaray", "RAMS Park",
                    "assets/images/post1.jpg"),
                commentBox("337 likes", ""),
                commentBox("batuhandavut", "Güzel bir maçtı"),
                commentBox("leomessi", "Best team in the world!"),
                //post 2
                PostItem("assets/images/messipp.jpg", "leomessi",
                    "Saudi Arabia", "assets/images/messi.jpg"),
                commentBox("30.377.037 likes", ""),
                commentBox(
                    "cristiano", "I wish I could win too, you are my idol <3 "),
                commentBox("depaul", "The Best Captain IN THE WORLD!!!"),
                //post 3
                PostItem("assets/images/gspp.jpg", "galatasaray", "RAMS Park",
                    "assets/images/post3.jpg"),
                commentBox("1.037.037 likes", ""),
                commentBox(
                    "galatasaray", "Maç Sonucu: Galatasaray 4 - 0 Alanyaspor"),
                commentBox("driesmertens", "Well done guys"),
                commentBox("batuhandavut", "Bravo takım!"),
              ]),
            )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.grey,
              )),
              width: double.infinity,
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home_rounded,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.add_box_outlined,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display_outlined,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.account_circle_rounded,
                      size: 35,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container PostItem(String avatar, String name, String location, content) =>
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            location,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(content),
            LikeBox(),
          ],
        ),
      );

  Padding LikeBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 29,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.maps_ugc_outlined,
                size: 27,
              ),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.send_outlined,
                size: 27,
              ),
            ],
          ),
          Icon(
            Icons.bookmark_outline,
            size: 30,
          ),
        ],
      ),
    );
  }

  Padding commentBox(name, comment) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, bottom: 2.1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              maxLines: 3,
              text: TextSpan(children: [
                TextSpan(
                    text: name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black)),
                TextSpan(text: " "),
                TextSpan(
                    text: comment,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.black))
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget TopLocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Row(
                    children: [
                      StoryItem("assets/images/gspp.jpg", "Hikayen"),
                      StoryItem("assets/images/cr7.jpg", "cristiano"),
                      StoryItem("assets/images/icardi1.jpg", "mauroicardi"),
                      StoryItem("assets/images/batu.jpg", "batuhandavut"),
                      StoryItem("assets/images/zaha.jpg", "wilfredzaha"),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(214, 71, 103, 1),
                  Color.fromRGBO(241, 166, 117, 1),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 35,
              ),
            ),
          ),
          Text(
            name,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
