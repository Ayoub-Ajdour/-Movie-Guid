import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //hadi size ta3 screen kamela
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: 20,
              left: -23,
              height: 136,
              width: 250,
              child: Image.asset(
                "assets/images/2.png",
              )),
          Positioned(
              top: 200,
              // left: size.width / 8,
              width: size.width - 2,
              child: child)
        ],
      ),
    );
  }
}
