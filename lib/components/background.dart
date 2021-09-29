import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Container(
        height: size.height,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -80,
              left: -100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Container(
                  color: Colors.blue.withOpacity(0.35),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            child,
            Positioned(
              bottom: -120,
              right: -100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Container(
                  color: Colors.blue.withOpacity(0.35),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
