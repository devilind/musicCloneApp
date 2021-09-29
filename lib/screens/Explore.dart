import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/playScreen.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Card(
                  color: Colors.black,
                  child: SizedBox(
                    height: 50,
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
                                child: Text("New Releases"),
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
                Card(
                  color: Colors.black,
                  child: SizedBox(
                    height: 50,
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
                                child: Text("Charts"),
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
                Card(
                  color: Colors.black,
                  child: SizedBox(
                    height: 50,
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
                                child: Text("Moods & geners"),
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
              ],
            ),
            Divider(
              height: 10,
              thickness: 2,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "New albums and singles",
                    style:
                        TextStyle(fontSize: 19.4, fontWeight: FontWeight.bold),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PlayScreen()),
                                  );
                                },
                                child: Card(
                                  child: SizedBox(
                                    width: 160,
                                    height: 160,
                                    child: Image.network(
                                        "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                  ),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Card(
                                child: SizedBox(
                                  width: 160,
                                  height: 160,
                                  child: Image.network(
                                      "https://i.scdn.co/image/ab67616d0000b27386a8ab515de4b7aef28cd631"),
                                ),
                              ),
                              Padding(
                                child: Text("Jordi (Deluxe)"),
                                padding: EdgeInsetsDirectional.only(start: 8),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.album),
                                    Text(" Album"),
                                    Text(" • Maroon 5")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Mood and genres",
                    style:
                        TextStyle(fontSize: 19.4, fontWeight: FontWeight.bold),
                  ),
                  Text("See All"),
                ],
              ),
            ),
            CarouselSlider(
              items: [
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4)))),
                            child: Container(
                              height: 37,
                              width: 170,
                              decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(
                                        color: Colors.red, width: 8)),
                                color: Colors.grey[900],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hindi",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)),
                            ),
                            child: ClipPath(
                              clipper: ShapeBorderClipper(
                                  shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                              )),
                              child: Container(
                                height: 37,
                                width: 170,
                                decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(
                                          color: Colors.red, width: 8)),
                                  color: Colors.grey[900],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hindi",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                height: 165,
                enlargeCenterPage: false,
                autoPlay: false,
                aspectRatio: 16 / 9,
                enableInfiniteScroll: false,
                viewportFraction: 0.9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Trending",
                    style:
                        TextStyle(fontSize: 19.4, fontWeight: FontWeight.bold),
                  ),
                  Text("See All"),
                ],
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 1     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 2     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 3     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 4     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 1     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 2     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 3     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 4     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 1     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 2     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 3     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
                                "https://i1.sndcdn.com/artworks-ZmhfgDl4MOfeNICH-dTzjug-t500x500.jpg"),
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
                                  " 4     Chacha Rap",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Roboto"),
                                ),
                                Text(
                                  "         Chacha",
                                  style: TextStyle(
                                      color: Colors.grey, fontFamily: "Roboto"),
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
            )
          ],
        ),
      ),
    );
  }
}
