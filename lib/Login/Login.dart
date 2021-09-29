import 'package:flutter/material.dart';
import 'package:spotify_clone/components/background.dart';
//import 'package:spotify_clone/main.dart';
import 'package:http/http.dart' as http;
import 'package:spotify_clone/models/LoginUser.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

Future<LoginUser> userLogin(String username, String password) async {
  var url = Uri.parse("http://10.0.2.2:8000/api/login/");
  final apiurl = url;
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

class _LoginScreenState extends State<LoginScreen> {
  final _usernameCon = TextEditingController();
  final _passCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Material(
      child: Background(
        child: Positioned(
          top: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextfieldContainer(
                size: size,
                child: TextField(
                  controller: _usernameCon,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    hintText: "Email",
                  ),
                ),
              ),
              TextfieldContainer(
                size: size,
                child: TextField(
                  controller: _passCon,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.password_rounded,
                      color: Colors.blue.withOpacity(0.5),
                    ),
                    hintText: "Password",
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(23),
                child: Container(
                  color: Colors.blue,
                  width: 90,
                  child: TextButton(
                    onPressed: () async {
                      final String username = _usernameCon.text;
                      final String password = _passCon.text;
                      final LoginUser login =
                          await userLogin(username, password);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextfieldContainer extends StatelessWidget {
  final Widget child;
  const TextfieldContainer({@required this.child, this.size, Key key})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: size.width * 0.8,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.blue.withOpacity(0.3),
      ),
    );
  }
}
