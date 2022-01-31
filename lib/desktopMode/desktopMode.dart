import 'package:chiemerie_sug/main.dart';
import 'package:chiemerie_sug/mobileMode/mobileMode.dart';
import 'package:chiemerie_sug/webComponents/drivenByPAssion.dart';
import 'package:chiemerie_sug/webComponents/sentOne.dart';
import 'package:flutter/material.dart';

class DesktopMode extends StatelessWidget {
  const DesktopMode({
    Key? key,
    required this.size, this.whatsapp,
  }) : super(key: key);

  final Size size;
final Function ? whatsapp;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              // height: size.height * 0.58,
              color: Color(0xffffffff),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(),
                  DrivenByPAssionRow(size: size),
                  // Spacer(),
                  Container(
                    height: size.height * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: SentOneContainer(size: size),
                        ),
                        Expanded(
                          flex: 4,
                          child: EmerieSmileContainer(),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 30,),
            OurLivesBegin(size: size),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //!PICTURE COLUMN, PROVEN LEADERSHIP, MY LIBRARY
                Expanded(
                  flex: 15,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        EmerieHandUp(size: size),
      
                        ProvenLeadership(size: size),
                        SizedBox(height: 13),
                      ],
                    ),
                  ),
                ),
      
                //!Whatsapp column
                Expanded(
                  flex: 14,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        WhatsappContainer(size: size),
                        EmerieFlyer(size: size)
                      ],
                    ),
                  ),
                )
              ],
            ),
      
      //? THE VISION CONTAINER
            Container(
              height: size.height * 0.40,
              width: size.width,
              color: Color(0xffDEE0F2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: RichText(
                      textScaleFactor: 2.4,
                      text: TextSpan(
                        text: 'THE ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TheVisionOptions(
                            size: size,
                            text: 'Academic Excellence',
                            imageUrl: 'assets/images/academic1.png',
                          ),
                        ),
                        Expanded(
                          child: TheVisionOptions(
                            size: size,
                            text: 'Spiritual Growth',
                            imageUrl: 'assets/images/spiritual.png',
                          ),
                        ),
                        Expanded(
                          child: TheVisionOptions(
                            size: size,
                            text: 'Student Welfare',
                            imageUrl: 'assets/images/welfare.png',
                          ),
                        ),
                        Expanded(
                          child: TheVisionOptions(
                            size: size,
                            text: 'Finacial Empowerment',
                            imageUrl: 'assets/images/finance.png',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Footer(size: size),
           Footer2(size: size)
          ],
        ),
      ),
    );
  }
}
