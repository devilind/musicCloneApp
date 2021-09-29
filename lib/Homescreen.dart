import 'package:flutter/material.dart';
import 'package:spotify_clone/Library/Albums.dart';
import 'package:spotify_clone/Login/Login.dart';
import 'package:spotify_clone/Login/Login1.dart';
import 'package:spotify_clone/Login/SignUp.dart';
import 'package:spotify_clone/components/background.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 500,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Container(
                color: Colors.blue,
                width: 90,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        NoAnimationMaterialPageRoute(
                            builder: (context) => LoginScreen1()),
                        (route) => false);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Container(
                  color: Colors.blue,
                  width: 90,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          NoAnimationMaterialPageRoute(
                              builder: (context) => SignUpScreen()),
                          (route) => false);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
