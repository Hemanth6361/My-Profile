import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Widget textfield({required String hintText}) {
    return Material(
        elevation: 4,
        shadowColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                  letterSpacing: 2,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              fillColor: Colors.white30,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.grey,
          ],
        )),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 350,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      textfield(hintText: "Hemanth RangeGowda S P"),
                      textfield(hintText: "rangegowdasp77@gmail.com"),
                      textfield(hintText: "4MT20AI013"),
                      textfield(hintText: "19"),
                    ],
                  ),
                )
              ],
            ),
            CustomPaint(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              painter: HeaderCurvedContainer(),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "PROFILE",
                    style: TextStyle(
                        fontSize: 35,
                        letterSpacing: 1.5,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.rectangle,
                    color: Colors.grey,
                    image: DecorationImage(
                        image: AssetImage('asset/range3.jpeg'),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blueGrey;
    Path path = Path()
      ..relativeLineTo(0, 150)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 150)
      ..relativeLineTo(0, -150)
      ..close();
    canvas.drawPath(path, paint);
    @override
    bool shouldRepaint(CustomPainter oldDelegate) => false;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
