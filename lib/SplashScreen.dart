import 'package:flutter/material.dart';
import 'package:spotify_clone/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   new Future.delayed(
  //     const Duration(seconds: 3),
  //     () => Navigator.pushAndRemoveUntil(
  //       context,
  //       MaterialPageRoute(builder: (context) => MainScreen()),
  //       (Route<dynamic> route) => false,
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff42a5f5),
        body: TweenAnimationBuilder(
          child: Center(
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
          duration: Duration(milliseconds: 2000),
          tween: Tween<double>(begin: 1, end: 0),
          builder: (BuildContext context, double _val, Widget child) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Column(
                  children: [
                    Opacity(
                        opacity: _val,
                        child: Image(
                          image: AssetImage("images/applogo.png"),
                        )),
                    Text(
                      "Youtube Music",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
