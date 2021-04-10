import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/login-bkgd.png'), fit: BoxFit.fill),
          color: Colors.yellow,
          // Red border with the width is equal to 5
          border: Border.all(
            width: 5,
            color: Colors.red,
          ),
        ),
        child: Stack(
          children: [child],
        ));
  }
}
