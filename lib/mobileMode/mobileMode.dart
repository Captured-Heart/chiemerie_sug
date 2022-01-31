import 'package:auto_size_text/auto_size_text.dart';
import 'package:chiemerie_sug/main.dart';
import 'package:chiemerie_sug/responsive.dart';
import 'package:chiemerie_sug/webComponents/drivenByPAssion.dart';
import 'package:chiemerie_sug/webComponents/sentOne.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileMode extends StatelessWidget {
  const MobileMode({
    Key? key,
    required this.size,
    required this.whatsapp,
  }) : super(key: key);

  final Size size;
  final Function whatsapp;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Color,
              child: DrivenByPAssionRow(size: size),
            ),
            Container(
              height: size.height * 0.35,
              width: size.width,
              child: EmerieSmileContainer(),
            ),
            Container(
              width: size.width,
              height: size.height * 0.12,
              child: SentOneContainer(size: size),
            ),
            Container(
              width: size.width,
              height: size.height * 0.13,
              // size.width > 980 ? size.height * 0.1 : size.height * 0.09,
              child: OurLivesBegin(size: size),
            ),
            GestureDetector(
              onTap: whatsapp(),
              child: Container(
                width: size.width,
                // height: size.height * 0.23,
                // color: Colors.red,
                child: ProvenLeadership(size: size),
              ),
            ),
            Container(
                width: size.width,
                // height: size.height * 0.35,
                margin: EdgeInsets.only(top: 15),
                color: Color(0xffDEE0F2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 15),
                    RichText(
                      textScaleFactor: 2.4,
                      text: TextSpan(
                        text: 'THE ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black
                            // fontSize: 20,
                            ),
                        children: [
                          TextSpan(
                            text: 'VISION',
                            style: TextStyle(
                              color: Color(0xffFF0202),
                              fontWeight: FontWeight.bold,
                              // fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    //  VisionOptionMobileColumn(
                    //                 size: size,
                    //                 imgUrl: 'assets/images/academic1.png',
                    //                 text: 'Academic Excellence',
                    //               ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TheVisionListTile(
                          imgUrl: 'assets/images/academic1.png',
                          text: 'Academic Excellence',
                        ),
                        TheVisionListTile(
                          imgUrl: 'assets/images/finance.png',
                          text: 'Finacial Empowerment',
                        ),
                        TheVisionListTile(
                          imgUrl: 'assets/images/spirit1.png',
                          text: ' Student Welfare',
                        ),
                        TheVisionListTile(
                          imgUrl: 'assets/images/welfare.png',
                          text: 'Spritual Growth',
                        ),
                      ],
                    ),
                    // )
                  ],
                )),
            Container(
              width: size.width,
              height: size.height * 0.45,
              child: EmerieFlyer(size: size),
            ),
            Container(
              width: size.width,
              // height: size.height * 0.25,
              child: WhatsappContainer(size: size),
            ),
            Footer(size: size),
            Footer2(size: size),
          ],
        ),
      ),
    );
  }
}

class TheVisionListTile extends StatelessWidget {
  const TheVisionListTile({
    Key? key,
    required this.imgUrl,
    required this.text,
  }) : super(key: key);
  final String imgUrl, text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: Image.asset(
        imgUrl,
        // height: 30,
        width: 40,
        scale: 2.6,
      ),
      title: Text(
        text,
        // 'Academic Excellence',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}

class Footer2 extends StatelessWidget {
  const Footer2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: size.height * 0.25,
      width: size.width,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      color: Color(0xff111966),
      child: Responsive.isMobile(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Thanks for reading till the end of the page!',
                  style: TextStyle(
                      color: Colors.red,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
                SizedBox(height: 5),
                Text(
                  ' Click the Link below to get a free video on',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  '"How to Manage your Money as a College student"',
                  textScaleFactor: 1.2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                TextButton(
                  child: Text(
                    'https://wa.me/message/FYCVXHC7ECATK1',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    launch('https://wa.me/message/FYCVXHC7ECATK1');
                  },
                )
              ],
            )
          : Container(
              // height: size.height * 0.17,
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Thanks for reading till the end of the page!',
                    style: TextStyle(
                        color: Colors.red,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Click the Link below to get a free video on ',
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text:
                                '"How to Manage your Money as a College student" ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextButton(
                    child: Text(
                      'https://wa.me/message/FYCVXHC7ECATK1',
                      textScaleFactor: 1.2,
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () {
                      launch('https://wa.me/message/FYCVXHC7ECATK1');
                    },
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
    );
  }
}

class VisionOptionMobileColumn extends StatelessWidget {
  const VisionOptionMobileColumn({
    Key? key,
    required this.size,
    required this.imgUrl,
    required this.text,
  }) : super(key: key);

  final Size size;
  final String imgUrl, text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //!ADD IMAGE, THEN TEXT BELOW
          Container(
            padding: EdgeInsets.all(1),
            child: Center(
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
                height: size.height * 0.046,
              ),
            ),
            // width: 30,
            // height: 40,
          ),
          Container(
            padding: EdgeInsets.all(10),
            // color: Colors.pink.shade200,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Center(
              child: AutoSizeText(
                text,
                maxLines: 1,
                maxFontSize: 14,
                minFontSize: 1,
                wrapWords: true,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 18,
                    color: Color(0xff0B23FD)),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
          )
        ],
      ),
    );
  }
}
