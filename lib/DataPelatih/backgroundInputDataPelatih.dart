import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class backgroundInputDataPelatih extends StatelessWidget {
  final Widget child;

  const backgroundInputDataPelatih({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 10,
            right: 10,
            child: SvgPicture.asset(
              "assets/icons/coach.svg",
              height: 120,
              width: 120,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
                "assets/images/bottom2.png",
                width: size.width
            ),
          ),
          child
        ],
      ),
    );
  }
}