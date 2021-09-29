import 'package:flutter/material.dart';
import 'package:spotify_clone/Library/Albums.dart';
import 'package:spotify_clone/Library/Artist.dart';
import 'package:spotify_clone/Library/Playlist.dart';

class Library extends StatelessWidget {
  final List<String> pageList = <String>["PlayLists", "Album", "Artists"];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12.0, bottom: 15, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recent activity',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.keyboard_arrow_right_outlined),
                        )
                      ],
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b2733b1110ca4f2f4dd85f5ee49e",
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Summer Air")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Hardwell ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                    "https://www.exclusivetribe.net/wp-content/uploads/2019/09/French-Montana-Writing-on-the-wall.jpeg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Writing On The Wall")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Post Malone ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                    "https://i1.sndcdn.com/artworks-e6O7Aiop22oP-0-t500x500.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Fake A Smile")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Alan Walker ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                    "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Lut Gaye")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Jubin Nautiyal ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                    "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Lut Gaye")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Jubin Nautiyal ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 170,
                                  child: Image.network(
                                    "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5),
                                  child: Text("Lut Gaye")),
                              Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      start: 10, top: 5, bottom: 10),
                                  child: Text(
                                    "Song • Jubin Nautiyal ",
                                    style: TextStyle(color: Colors.grey[400]),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        NoAnimationMaterialPageRoute(
                            builder: (context) => PlayLists(),
                            settings: RouteSettings(arguments: "Playlists")),
                      );
                    },
                    child: Card(
                      color: Colors.black,
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.playlist_play),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Playlists"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.keyboard_arrow_right_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        NoAnimationMaterialPageRoute(
                          builder: (context) => Albums(),
                          settings: RouteSettings(arguments: "Albums"),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.black,
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.album_outlined),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Albums"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.keyboard_arrow_right_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        NoAnimationMaterialPageRoute(
                          builder: (context) => Artist(),
                          settings: RouteSettings(arguments: "Artists"),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.black,
                      child: SizedBox(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.my_library_music),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Artists"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.keyboard_arrow_right_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
