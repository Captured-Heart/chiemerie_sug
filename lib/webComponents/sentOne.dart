import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SentOneContainer extends StatelessWidget {
  const SentOneContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(

      color: Color(0xff283291),
      // height: size.height * 0.4,
      // width: size.width * 0.45,
      child: size.width < 980
          ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      'CHIEMERIE ',
                      textScaleFactor: 2.3,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                        // fontSize: size.height * 0.05
                      ),
                    ),
                    AutoSizeText(
                      ' VICTOR ',
                      textScaleFactor: 2.3,
                      // minFontSize: 15,
                      // maxFontSize: 40,
                      maxLines: 1,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 72,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Sent One ',
                  textScaleFactor: 2.0,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    color: Color(0xffffffff),
                  ),
                ),

                
              ],
            )
          : Column(
              mainAxisAlignment: size.height < 980
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.spaceEvenly,
              children: [
                AutoSizeText(
                  'CHIEMERIE ',
                  textScaleFactor: size.width < 980 ? 3.3 : 4.7,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffffffff),
                    // fontSize: size.height * 0.05
                  ),
                ),
                AutoSizeText(
                  ' VICTOR ',
                  // textScaleFactor: 5.0,
                  // minFontSize: 15,
                  // maxFontSize: 40,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 72,
                    color: Color(0xffffffff),
                  ),
                ),
                Text(
                  'SENT ONE ',
                  textScaleFactor: 2.0,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
    );
  }
}
