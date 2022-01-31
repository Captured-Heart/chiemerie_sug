import 'package:chiemerie_sug/mobileMode/mobileConstant.dart';
import 'package:chiemerie_sug/responsive.dart';
import 'package:flutter/material.dart';

class DrivenByPAssionRow extends StatelessWidget {
   DrivenByPAssionRow({
    Key? key,
    required this.size, this.responsive,
  }) : super(key: key);

  final Size size;
  final MobileConstant mobileConstant = MobileConstant();
  final Responsive ?responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      // height: size.width < 980 ? size.height * 0.045 : size.height * 0.17,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            // height: size.height * 0.5,
            // width: Responsive.isTablet(context) ? size.width * 0.01 : 0.001,
            child: Row(
              children: [
                Image.asset('assets/images/logo1.png'),
                Image.asset('assets/images/logo2.png'),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Driven by LOVE, PASSION and SINCERITY',
              textAlign: TextAlign.center,
                  style: TextStyle(fontSize: Responsive.isDesktop(context) ? mobileConstant.fontSize : mobileConstant.fontSize/1.1) ),
              SizedBox(
                width: 10,
              ),
              Responsive.isMobile(context) ?
              Container(
                margin: EdgeInsets.only(right: 15.0),
                color: Colors.grey.shade400,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4),
                  child: Text(
                    'Isaiah 6:8',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mobileConstant.fontSize
                    ),
                  ),
                ),
              ):
               Container(
                margin: EdgeInsets.only(right: 25.0),
                color: Colors.grey.shade400,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 4),
                  child: Text(
                    'Isaiah 6:8',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mobileConstant.fontSize
                    ),
                  ),
                ),
              ) 
            ],
          )
        ],
      ),
    );
  }
}
