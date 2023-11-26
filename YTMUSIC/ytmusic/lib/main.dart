import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ytLogo = 'assets/images/youtube_music.png';
    return MaterialApp(
        title: 'youtube_music',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: Scaffold(
            body: Column(children: [
          Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(48, 14, 32, 1),
                  Color.fromRGBO(62, 36, 17, 1),
                ]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(ytLogo, height: 30, fit: BoxFit.fitWidth),
                        Row(
                          children: [
                            Icon(
                              Icons.podcasts,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(width: 15),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://lh3.googleusercontent.com/a-/ALV-UjV8W3AhaIFaD8s6dxSXMvRIxKxfclXPGvySO38fas-lr6Wr-v9ni5Tw4cseYDKA1DXGgL4nAKxfk80W9PfHEOf0iu9BpIX-6ENc-qjrD5DE5GD3xRyVYdCl6CkVU9yLN0m-lZ3Zi_SzWMKXXfOzGBL6rc9wY3cSCeiaX6S9oYnXXZC3ZRik_Wv0Hp23CRbcmTC8dk3dE2fRDeLsqjleoFEezqS-JKcQZmxMkSbuAXzsrw-uXeh6XaZK115SlBsicUFKrPB4wWmVVbHyDpURc2LIgMUkhMYs_0V26lYvdpdSZGz5T9jebAzJ9cAEcRvmUH0Rv-lL-6KoSrPv6OneVQpVzZNYZUWlOa6ZfHxZoxLAB4_bNglPzLXT9H9t97LpOKDtS1wzIjiCrh_h15QRYScTohSftHuAjL2t3Q8liZ1dD2hj1b5hv9TyRBvKU41woopmTTFh9LaNu7ciSUS4K7QzbiN8rkTUC_DdNzsqMiT4I5poNUa7eOXM6tgEtuZTBFbB7A0escvHZvTBDw-GcbdC5g5VyhwAzHE8qfBOBhe8LtJlAYbuZCeugzG0cFriIFbJWpvw6L75IH1_ELSEyXXHIt_RAYA0dPj3r9tmVVwa-iNZDy9ptBUT6TwqqBv3k5sb0QCTp-4h67K7FRk5RcNH7lcS7qw2ebJR2elG70gbz8VbmLjdlyszfTMedsmp8Zap3WQxJUp2J-44J9FQOYPl_4uUZi0DIfplTQEMEH4bZWe7TzRtR2Yrfv4aX19OFmLQFRaGLnzW8WsIpBpyV4MfO6_7Hlia2JCR4KFseUPzuxYH1kg5Mt50aURqGRi0HE203yCZf43JbbiHO6KHDw9nJIJMAegK8Gvw_FqORJylqCKVyIj5Yp4rflmRtUAsF8lHlZyMQpQTNGzWAegw8BEJIaKu1I3FvyIbr03g239zf_33Z5QCrvrwOAmMEgJ6Ww=s360-c-no"),
                              radius: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Category("Energize"),
                          Category("Mood"),
                          Category("Happy"),
                          Category("Phonk"),
                          Category("Bass"),
                          Category("Crazy"),
                          Category("Weekend"),
                          Category("Study"),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 10, 10, 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "START RADIO FROM A SONG",
                        style: TextStyle(
                            color: Color.fromARGB(255, 167, 167, 167),
                            fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2, bottom: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick Picks",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 168, 168, 168),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                MusicRow(
                                    "https://e.snmc.io/i/1200/s/5f417df461424abbd1a82bba7f8d2a6c/5928532",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                                MusicRow(
                                    "https://cdns-images.dzcdn.net/images/cover/af9b4bf24f5c4b3ba0c74d9f13aa5387/264x264.jpg",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                                MusicRow(
                                    "https://lh3.googleusercontent.com/V-zn2-nhO20FTF3KrsWQ2OrnD3_nvGvLgiimn98NeNUGLszrHXeY2umA8809GXEOnsnBlJ9HapMKMFhHLQ=w544-h544-l90-rj",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                              ],
                            ),
                            Column(
                              children: [
                                MusicRow(
                                    "https://lh3.googleusercontent.com/GtZYkmRzVED0t2TVb3BR4eh-KQAUX2YNqYyEqhn5CbBPAtxDiD9fIQSHK5afDJhl0nVo0y8fHdvFR3xY=w544-h544-l90-rj",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                                MusicRow(
                                    "https://lh3.googleusercontent.com/892oLXFfX-8piEQSjqqhtG7E4CBze2heItWukcCFJlohFymFbOcmSaXUMTPYnrY1eP4ciTT-nQ7kXJjZ=w544-h544-l90-rj",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                                MusicRow(
                                    "https://lh3.googleusercontent.com/b4LtQmxT0kyG69CVs8WZdYmp0XfVJVC5Z9i_MEx3_zCWBWwwrJZn2e18mFBuCYvFPWsqQSHCZQQ7QaMH=w544-h544-l90-rj",
                                    "quis nostrud exercitation ullamco",
                                    "quis nostrud"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 5, top: 5, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten Memories",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white70, width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 168, 168, 168),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, right: 5.0),
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://lh3.googleusercontent.com/Hql54t7hNfn1bKYb12K9lySOohV4K46VOYUPKXWFUo3EPLJYNgzvMp5wGidZp4AlLf4Gt0GgnD_6mA=w544-h544-l90-rj",
                                    width: 200,
                                    height: 200,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hashtag Hits",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "Semicenk, Muti,Lvbel C5..",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 167, 167, 167),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://lh3.googleusercontent.com/MyRlkK_WW-4mf56BWlXvIU7WBXQC6Ks19s0auX6cKXPQH42YIQK52bvriyt2I_47zNWuPBTWXfbXJw=w544-h544-l90-rj",
                                    width: 200,
                                    height: 200,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "FLAŞ Turkish Pop",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "Emircan İğrek,Burak Bulut,...",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 167, 167, 167),
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: Column(
                                children: [
                                  Image.network(
                                    "https://lh3.googleusercontent.com/PTv3G_LTl5KXMRILVSQbW_pkI7D-_moWSp8HhlMX0wl_Cn0iVWq5jbqTUVaJGwrOckqMxDNaJ2-JSho=w544-h544-l90-rj",
                                    width: 200,
                                    height: 200,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Hit Şarkılar Türkiye",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          "Ezhel,UZI,Mert Demir...",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 167, 167, 167),
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: const Color.fromARGB(255, 33, 33, 33),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.play_circle_fill,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Samples",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.explore,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.subscriptions,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Library",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.slideshow,
                      color: Colors.white,
                      size: 30,
                    ),
                    Text(
                      "Upgrade",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ])));
  }

  Padding MusicRow(String url, String songName, String artist) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
        bottom: 5,
      ),
      child: Row(
        children: [
          Image.network(
            url,
            width: 65,
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  songName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  artist,
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 167, 167), fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Container Category(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(20, 255, 255, 255),
          border: Border.all(color: Colors.white, width: 0.1)),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
      margin: EdgeInsets.only(left: 5, right: 5),
    );
  }
}
