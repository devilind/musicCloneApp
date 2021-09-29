import 'dart:ui';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/models/LoginUser.dart';
import 'package:spotify_clone/main.dart';
import 'package:spotify_clone/models/RegisterUser.dart';

class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}

Future<LoginUser> userLogin(String username, String password) async {
  final apiurl = Uri.parse("http://10.0.2.2:8000/api/login/");
  final response = await http.post(apiurl, body: {
    "username": username,
    "password": password,
  });

  if (response.statusCode == 200) {
    final String responseString = response.body;
    print(responseString);
    return loginUserFromJson(responseString);
  } else {
    return null;
  }
}

Future<Register> userRegister(
    String username, String password, String email) async {
  final apiurl = Uri.parse("http://10.0.2.2:8000/api/register/");
  final response = await http.post(apiurl, body: {
    "username": username,
    "email": email,
    "password": password,
  });

  if (response.statusCode == 200) {
    final String responseString = response.body;
    print(responseString);
    return registerFromJson(responseString);
  } else {
    return null;
  }
}

class _LoginScreen1State extends State<LoginScreen1> {
  int _current = 0;
  bool _loginSelected = true;
  bool _signupSelected = false;
  CarouselController buttonCarouselController = CarouselController();

  final _loginUsernameCon = TextEditingController();
  final _loginPassCon = TextEditingController();
  final _signUsernameCon = TextEditingController();
  final _signEmailCon = TextEditingController();
  final _signPassCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: size.width,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 300,
                  child: Stack(children: [
                    Container(
                      width: size.width,
                      child: CarouselSlider(
                        items: [
                          Container(
                            height: 450,
                            width: size.width - 50,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 10.0,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: TextField(
                                      controller: _loginUsernameCon,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 22 * 0.75,
                                            horizontal: 22),
                                        fillColor: Colors.white,
                                        hintText: 'Enter Username',
                                        suffixIcon: Icon(
                                          Icons.email_outlined,
                                          size: 25.0,
                                          color: Colors.red.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Material(
                                    elevation: 10.0,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: TextField(
                                      controller: _loginPassCon,
                                      cursorColor: Colors.black,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 22 * 0.75,
                                            horizontal: 22),
                                        fillColor: Colors.white,
                                        hintText: 'Enter Password',
                                        suffixIcon: Icon(
                                          Icons.lock_outline,
                                          size: 25.0,
                                          color: Colors.red.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print("Forgot password");
                                          },
                                          child: Text(
                                            'Forgot Password?',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  Center(
                                    child: ClipRRect(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(23)),
                                        width: 300,
                                        child: TextButton(
                                          onPressed: () async {
                                            final String username =
                                                _loginUsernameCon.text;
                                            final String password =
                                                _loginPassCon.text;
                                            final LoginUser login =
                                                await userLogin(
                                                    username, password);
                                            setState(() {
                                              print(login);
                                            });
                                          },
                                          child: Text(
                                            "Log In",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: size.width - 50,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 22),
                              child: Column(
                                children: [
                                  Material(
                                    elevation: 10.0,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: TextField(
                                      controller: _signUsernameCon,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 22 * 0.75,
                                            horizontal: 22),
                                        fillColor: Colors.white,
                                        hintText: 'Enter Username',
                                        suffixIcon: Icon(
                                          Icons.email_outlined,
                                          size: 25.0,
                                          color: Colors.red.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Material(
                                    elevation: 10.0,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: TextField(
                                      controller: _signEmailCon,
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 22 * 0.75,
                                            horizontal: 22),
                                        fillColor: Colors.white,
                                        hintText: 'Enter Email',
                                        suffixIcon: Icon(
                                          Icons.email_outlined,
                                          size: 25.0,
                                          color: Colors.red.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Material(
                                    elevation: 10.0,
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: TextField(
                                      controller: _signPassCon,
                                      cursorColor: Colors.black,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 22 * 0.75,
                                            horizontal: 22),
                                        fillColor: Colors.white,
                                        hintText: 'Enter Password',
                                        suffixIcon: Icon(
                                          Icons.lock_outline,
                                          size: 25.0,
                                          color: Colors.red.withOpacity(0.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            print("Forgot password");
                                          },
                                          child: Text(
                                            'Already Registered? Login Here',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.white.withOpacity(0.9),
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ]),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                  Center(
                                    child: ClipRRect(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.red),
                                            borderRadius:
                                                BorderRadius.circular(23)),
                                        width: 300,
                                        child: TextButton(
                                          onPressed: () async {
                                            final String username =
                                                _signUsernameCon.text;
                                            final String password =
                                                _signPassCon.text;
                                            final String email =
                                                _signEmailCon.text;
                                            final Register login =
                                                await userRegister(
                                                    username, password, email);
                                            setState(() {
                                              print(login);
                                            });
                                          },
                                          child: Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.025,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                            height: 450,
                            enlargeCenterPage: false,
                            autoPlay: false,
                            aspectRatio: 16 / 9,
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                                if (_current == 0) {
                                  _loginSelected = true;
                                  _signupSelected = false;
                                } else {
                                  _signupSelected = true;
                                  _loginSelected = false;
                                }
                                print(_current);
                              });
                            }),
                      ),
                    ),
                    Positioned(
                      top: 350,
                      left: size.width / 2 - 110,
                      child: Card(
                        color: Colors.black.withOpacity(0),
                        elevation: 0,
                        child: ClipRRect(
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: BorderRadius.circular(23)),
                              width: 200,
                              height: 50,
                              child: Card(
                                elevation: 0,
                                color: Colors.white.withOpacity(0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () => buttonCarouselController
                                          .animateToPage(0,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.decelerate),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Log in",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Visibility(
                                              visible: _loginSelected,
                                              child: Container(
                                                height: 3,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.red),
                                              ))
                                        ],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () => buttonCarouselController
                                          .animateToPage(1,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.decelerate),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Sign Up",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Visibility(
                                            visible: _signupSelected,
                                            child: Container(
                                              height: 3,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.red),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
