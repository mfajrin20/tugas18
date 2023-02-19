import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
    this.hotImage = "assets/images/Hot_glow_4.png",
    this.coolImage = "assets/images/Cool_glow_2.png",
  }) : super(key: key);

  final String topImage, bottomImage, hotImage,coolImage ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 120,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 140,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 160,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 180,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 200,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                topImage,
                width: 220,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 120),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 140),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 160),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(bottomImage, width: 180),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
