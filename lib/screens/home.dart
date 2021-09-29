//@dart=2.9
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:spotify_clone/screens/album.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

//import 'package:spotify_clone/playScreen.dart';

import 'playScreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var length = -1;
  bool isLoading = true;
  Future fetchMusic() async {
    var url = Uri.parse("https://ytclone.pythonanywhere.com/api/songs/");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var obj = json.decode(response.body);
      length = obj.length;
      print(length);
      isLoading = false;
      return obj;
    }
  }

  @override
  void initState() {
    fetchMusic();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ScrollConfiguration(
        behavior: MyBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                child: Text(
                  "Your favourites",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(15),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.23,
                  child: FutureBuilder(
                      future: fetchMusic(),
                      builder: (context, snapshot) {
                        if (!isLoading) {
                          return ListView.builder(
                              itemCount: length + 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          // Within the `FirstRoute` widget

                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Album()),
                                          );
                                        },
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: Container(
                                            height: 160,
                                            width: 160,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      'https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317'),
                                                  fit: BoxFit.fill),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text("Imagine Dragons"),
                                    ],
                                  );
                                }
                                if (!isLoading) {
                                  return Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PlayScreen(),
                                                settings:
                                                    RouteSettings(arguments: {
                                                  'title': snapshot
                                                      .data[index - 1]['name'],
                                                  'imageUrl':
                                                      snapshot.data[index - 1]
                                                          ['songimage'],
                                                  'musicUrl': snapshot
                                                      .data[index - 1]['song'],
                                                  'artist': snapshot
                                                      .data[index - 1]['artist']
                                                }),
                                              ));
                                        },
                                        child: Card(
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Image.network(
                                              'https://ytclone.pythonanywhere.com' +
                                                  snapshot.data[index - 1]
                                                      ['songimage'],
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        child: Text(
                                            snapshot.data[index - 1]['name']),
                                        padding: EdgeInsetsDirectional.only(
                                            start: 8),
                                      ),
                                    ],
                                  );
                                } else {
                                  return Text("end");
                                }
                              });
                        } else
                          return ListView.builder(
                              itemCount: 8,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return shimmerfood(index);
                              });
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  top: 30,
                ),
                child: Text(
                  "LISTEN AGAIN",
                  style: TextStyle(fontSize: 12, fontFamily: 'Aria'),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  top: 5,
                ),
                child: Text(
                  "Your Music",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto"),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 10, top: 5),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Within the `FirstRoute` widget

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PlayScreen()),
                              );
                            },
                            child: Card(
                              child: SizedBox(
                                width: 80,
                                height: 80,
                                child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToFpKL9tWrYAHBrLupspnNPdDjYDgw9TUHzw&usqp=CAU",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          Text("lut gaye")
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcFfuj_lWl_XHfUtBYzFAakqktFu8YyZPQfw&usqp=CAU",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("teri ore")
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("Imagine Dragons")
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("Imagine Dragons")
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("Imagine Dragons")
                        ],
                      ),
                      Column(
                        children: [
                          Card(
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.network(
                                "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text("Imagine Dragons")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  top: 30,
                ),
                child: Text(
                  "PLAY YOUR SONG",
                  style: TextStyle(fontSize: 12, fontFamily: 'Aria'),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 15,
                  top: 5,
                ),
                child: Text(
                  "Quick Picks",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              CarouselSlider(
                items: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Row(
                        children: [
                          Card(
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.network(
                                  "https://static.wikia.nocookie.net/imaginedragons/images/a/a2/Imagine_Dragons.jpg/revision/latest?cb=20190530175317"),
                            ),
                          ),
                          SizedBox(
                            width: 270,
                            child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Imagine Dragons",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Imagine",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "Roboto"),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                    ],
                  ),
                ],
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: false,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  enableInfiniteScroll: false,
                  viewportFraction: 0.9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget shimmerfood(index) {
    if (index != 0) {
      return Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: SizedBox(
                width: 160,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3),
              child: Card(
                child: SizedBox(
                  height: 10,
                  width: 100,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Shimmer.fromColors(
        baseColor: Colors.grey[400],
        highlightColor: Colors.grey[300],
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                height: 150,
                width: 160,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3),
              child: Card(
                child: SizedBox(
                  height: 10,
                  width: 100,
                ),
              ),
            )
          ],
        ),
      );
    }
  }
}

Route _playScreenRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => PlayScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
