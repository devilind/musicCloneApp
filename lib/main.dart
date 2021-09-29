// @dart=2.9
import 'package:flutter/material.dart';
import 'package:spotify_clone/Homescreen.dart';
import 'package:spotify_clone/screens/Explore.dart';
import 'package:spotify_clone/screens/Library.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/playScreen.dart';
//import 'package:spotify_clone/Explore.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen()));

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index;
  int index2;
  Icon playButton = Icon(
    Icons.play_arrow,
    size: 35,
  );
  int tappingPlay = 0;
  List<Widget> pageList = <Widget>[Body(), Explore(), Library()];
  @override
  Widget build(BuildContext context) {
    index2 = ModalRoute.of(context).settings.arguments ?? 0;
    index = index ?? index2;
    // print(index2);
    // print(index);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.play_arrow_outlined,
                  size: 30,
                ),
                Text(
                  'Music',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                debugPrint("Search");
              },
              tooltip: "Search",
            ),
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: IconButton(
                icon: CircleAvatar(
                  //Later cahnge with backgrou
                  child: Icon(
                    Icons.perm_identity_outlined,
                  ),
                ),
                onPressed: () => debugPrint("Profile"),
                tooltip: "Profile",
              ),
            )
          ],
        ),
        body: pageList[index],
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_playScreenRoute());
                      },
                      child: Image(
                        image: NetworkImage(
                            "https://i1.sndcdn.com/artworks-000523641915-lo2qzf-t500x500.jpg"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("On My Way "),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    iconSize: 35,
                    icon: playButton,
                    onPressed: () => setState(() {
                      if (tappingPlay == 0) {
                        playButton = Icon(
                          Icons.pause,
                          size: 30,
                        );
                        tappingPlay = 1;
                      } else {
                        playButton = Icon(
                          Icons.play_arrow,
                          size: 30,
                        );
                        tappingPlay = 0;
                      }
                    }),
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    onPressed: null,
                  )
                ],
              ),
            ],
          )
        ],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[900],
            currentIndex: index,
            onTap: (value) {
              setState(() {
                index = value;
              });

              // Navigator.pop(context);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red[400],
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: "Library",
              ),
            ]),
      ),
    );
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
