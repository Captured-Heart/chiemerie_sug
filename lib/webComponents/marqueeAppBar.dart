import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeAppBar extends StatelessWidget {
  const MarqueeAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.03,
      width: size.width,
      child: Marquee(
        text:
            'Chiemerie Victor has you at heart!!!...................SUG OO1.....................Chiemerie Victor has you at heart!!!..................SUG 001........................Chiemerie Victor has you at heart!!!.................SUG 001......................Chiemerie Victor has you at heart!!!........................SUG 001     ',
        style: TextStyle(
            color: Color(0xffFF0606),
            fontSize: 18,
            fontWeight: FontWeight.bold),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}

