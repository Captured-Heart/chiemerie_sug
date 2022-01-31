import 'package:auto_size_text/auto_size_text.dart';
import 'package:chiemerie_sug/desktopMode/desktopMode.dart';
import 'package:chiemerie_sug/responsive.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'mobileMode/mobileMode.dart';
import 'webComponents/marqueeAppBar.dart';

void main() {
  runApp(MyApp()

      //   DevicePreview(
      //   builder: (context) {
      //     return ;
      //   },
      //   enabled: !kReleaseMode,
      // )
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'SUG 001 EMERIE VICTOR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void launchWhatsapp({String? number, String? message}) async {
    String url = "https://api.whatsapp.com/send?phone=$number&text=$message";
    await canLaunch(url) ? launch(url) : print('can\'t open whatsapp');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE6E8FB),
        title: MarqueeAppBar(size: size),
        toolbarHeight: 40,
      ),
      body: Responsive(
        mobile: MobileMode(
            size: size,
            whatsapp: () {
              // launchWhatsapp(number: '+234 912 339 3052', message: 'message');
            }),
        tablet: MobileMode(
            size: size,
            whatsapp: () {
              // launchWhatsapp(number: '+234 912 339 3052', message: 'message');
            }),
        //  DesktopMode(size: size,),
        desktop: DesktopMode(
            size: size,
            whatsapp: () {
              // launchWhatsapp(number: '+ 234 912 339 3052', message: 'message');
            }),
      ),
    );
  }
}

class EmerieFlyer extends StatelessWidget {
  const EmerieFlyer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

// Scholarship Alert Hub
// https://chat.whatsapp.com/IY1zNutsbbM7nws0NLwma3

// The Victor Academy
// (a Guidance Platform for all freshers)
// https://chat.whatsapp.com/KDteGdhYKB77oHUKgfzYxE
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: size.width > 980
          ? EdgeInsets.symmetric(vertical: 20)
          : EdgeInsets.symmetric(vertical: 10),
      height: size.width > 980 ? size.height * 0.5 : size.height * 0.4,
      width: size.width * 0.35,
      child: Image.asset(
        'assets/images/emerieFlyer.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class EmerieSmileContainer extends StatelessWidget {
  const EmerieSmileContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/images/emerie1.png',
        fit: BoxFit.fill,
        height: MediaQuery.of(context).size.height,
      ),

      // height: size.height * 0.4,
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:          Responsive.isMobile(context) ? size.height * 0.87 : size.height * 0.5,
      width: size.width,
      color: Color(0xff283291),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.07,
          vertical: size.height * 0.016,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              'What Students Need To know About',
              textScaleFactor: 1.32,
              maxLines: 1,
              style: TextStyle(
                color: Color(0xffFB0606),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'CHIEMERIE VICTOR',
                textScaleFactor: 1.8,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //     Text(
            //       '''
            // ''',
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontWeight: FontWeight.w400,
            //         height: 1.5,
            //         fontSize: 18
            //       ),
            //     ),
            RichText(
              text: TextSpan(
                text: ' I am a 300 level student from the ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    fontSize: 18),
                children: [
                  TextSpan(
                    text:
                        'Department of History and International Studies, Faculty of Art.',
                    style: TextStyle(
                        color: Colors.red.shade100,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text:
                        'I love to read books, spend quality time with loved ones and listen to people. I enjoy cooking mouth watering dishes & do hope to have a restaurant in the future.',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: ' I love God',
                    style: TextStyle(
                        color: Colors.red.shade100,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text:
                        ' and I love helping people regadless of anything & helping them to the fullest. ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: ''' 
                                                   
                                                   
Finally, I’m very intentional about Value Addition to students and this is why I have put out books and group links of benefit to the students on this page.''',
                    style: TextStyle(
                        color: Colors.red.shade100,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Responsive.isMobile(context)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/whatsapp1.png',
                                    fit: BoxFit.fill,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        ' +234 912 339 3052',
                                        style:
                                            TextStyle(color: Color(0xffffffff)),
                                      ),
                                      Text(
                                        ' +234 912 339 3052',
                                        style:
                                            TextStyle(color: Color(0xffffffff)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 15),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/facebook.png'),
                                  SizedBox(width: 3),
                                  Text(
                                    ' Chiemerie Victor ',
                                    style: TextStyle(color: Color(0xffffffff)),
                                  ),
                                ],
                              )
                            ],
                          )
                        : Container(
                            width: size.width / 1.3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/whatsappLogo.png',
                                      fit: BoxFit.fill,
                                    ),
                                    Text(
                                      ' +234 912 339 3052',
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ],
                                ),
                                // SizedBox(width: 3),

                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/whatsapp1.png',
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      ' +234 912 339 3052',
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/facebook.png'),
                                    SizedBox(width: 3),
                                    Text(
                                      ' Chiemerie Victor ',
                                      style:
                                          TextStyle(color: Color(0xffffffff)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                    // Row(
                    //   children: [
                    //     Image.asset('assets/images/whatsapp1.png'),
                    //     SizedBox(width: 3),
                    //     Text(
                    //       '+ 234 912 339 3052',
                    //       style: TextStyle(color: Color(0xffffffff)),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class EmerieHandUp extends StatelessWidget {
  const EmerieHandUp({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: size.width,
      child: Image.asset(
        'assets/images/emerie2.png',
        filterQuality: FilterQuality.high,
        fit: BoxFit.fill,
      ),
    );
  }
}

class OurLivesBegin extends StatelessWidget {
  const OurLivesBegin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          //  Colors.red,
          Color(0xffE9EAF8),
      // height: size.height * 0.1,
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      margin: EdgeInsets.only(top: 10, left: 8, bottom: 10, right: 5),
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: Responsive.isMobile(context)
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.center,
        children: [
          AutoSizeText.rich(
            TextSpan(
              text: '"Our lives ',
              style:
                  TextStyle(fontWeight: FontWeight.normal, color: Colors.black
                      // fontSize: 20,
                      ),
              children: [
                TextSpan(
                  text: 'begin',
                  style: TextStyle(
                      // color: Color(0xffFF0202),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                      // fontSize: 20,
                      ),
                ),
                TextSpan(
                  text: ' to ',
                  style: TextStyle(
                      // color: Color(0xffFF0202),
                      // fontWeight: FontWeight.bold,
                      // fontSize: 20,
                      ),
                ),
                TextSpan(
                  text: ' end ',
                  style: TextStyle(
                      // color: Color(0xffFF0202),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                      // fontSize: 20,
                      ),
                ),
                TextSpan(
                  text: ' the day we become silent about things that matter"',
                  style: TextStyle(
                      // color: Color(0xffFF0202),
                      // fontWeight: FontWeight.bold,
                      // fontSize: 20,
                      ),
                ),
              ],
            ),
            minFontSize: size.width > 980 ? 22 : 15,
            maxLines: 2,
          ),
          SizedBox(
            height: 8,
          ),
          Responsive.isMobile(context)
              ? AutoSizeText(
                  '- Martin Luther King',
                  // textAlign: TextAlign.right,
                  maxLines: 1,
                  minFontSize: 15,
                  style: TextStyle(
                      color: Color(0xffFF0404).withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                )
              : AutoSizeText(
                  'Martin Luther King',
                  // textAlign: TextAlign.right,
                  maxLines: 1,
                  minFontSize: 20,
                  style: TextStyle(
                      color: Color(0xffFF0404),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
        ],
      ),
    );
  }
}

class TheVisionOptions extends StatelessWidget {
  const TheVisionOptions({
    Key? key,
    required this.text,
    required this.size,
    required this.imageUrl,
    this.height,
  }) : super(key: key);
  final String text, imageUrl;
  final Size size;
  final double? height;

//!CONSTRUCT VARIABLES FOR IMAGE
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //!ADD IMAGE, THEN TEXT BELOW
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fill,
                  height: height,
                ),
              ),
              // width: 30,
              // height: 40,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              // color: Colors.pink.shade200,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xff0B23FD)),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class WhatsappContainer extends StatelessWidget {
  const WhatsappContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width > 980 ? size.height * 0.4 : null,
      color: Color(0xffDEE0F2),
      width: size.width * 0.35,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: size.width > 980
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            size.width > 980
                ? Center(
                    child: Text(
                      'WhatsApp Group Links',
                      textScaleFactor: 1.4,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : Center(
                    child: Text(
                      'WhatsApp Group Links',
                      textScaleFactor: 1.4,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/whatsappLogo.png'),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Scholarship Alert Hub',
                        textScaleFactor: 1.1,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'https://chat.whatsapp.com/IY1zNutsbbM7nws0NLwma3',
                          textScaleFactor: 1.1,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          launch(
                              'https://chat.whatsapp.com/IY1zNutsbbM7nws0NLwma3');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            size.width > 980 ? SizedBox(height: 1) : SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/whatsappLogo.png'),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The Victor Academy \n (A Guidance Platform for all Freshers)',
                        textScaleFactor: 1.1,
                        // maxLines: 4,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        child: Text(
                          'https://chat.whatsapp.com/KDteGdhYKB77oHUKgfzYxE',
                          textScaleFactor: 1.1,
                          // maxLines: 4,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        onPressed: () {
                          launch(
                              'https://chat.whatsapp.com/KDteGdhYKB77oHUKgfzYxE');
                        },
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProvenLeadership extends StatelessWidget {
  const ProvenLeadership({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      // height: size.height * 0.4,
      // color: Colors.red,
      width: size.width,
      child: Column(
        crossAxisAlignment: size.width > 980
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              'Proven Leadership Qualities',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: size.width > 980 ? 25 : 22,
                color: Color(0xffFF0202),
              ),
            ),
          ),
          Text(
            'I believe i am capable of this leadership owing the fact that i have the qualities of a leader. ',
            style: TextStyle(
              wordSpacing: 3,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'I am competent, honest, loving and accomodating. I feel the pain of of the students. ',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            'I\'m bold, courageous and i don\'t give up, i persist and that\'s what matters in leadership. ',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(
            'I have led previously in both department and class level as P.R.O. and I have served well and always with my heart.',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 13),

          Text(
            'My Library',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size.width > 980 ? 25 : 22,
              color: Color(0xffFF0202),
            ),
          ),

          TextButton(
            onPressed: () {
              launch(
                  'https://firebasestorage.googleapis.com/v0/b/chiemerievictor001.appspot.com/o/Small%20Business%20Big%20Money.pdf?alt=media&token=7c63ce90-1192-4f04-8bd1-fc47a75227e5');
            },
            child: Row(
              children: [
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Small Business Big Money by AKIN ALABI',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          //?TEXTBOOK 2
          TextButton(
            onPressed: () {
              launch(
                  'https://firebasestorage.googleapis.com/v0/b/chiemerievictor001.appspot.com/o/Lessons%20from%20David_%20How%20to%20Be%20a%20-%20Andrew%20Wommack.pdf?alt=media&token=0aa08f7e-ea6c-487e-90aa-a53f24420a60');
            },
            child: Row(
              children: [
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Lessons from David by ANDREW WOMMACK',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),

          //?TEXTBOOK3
          TextButton(
            onPressed: () {
              launch(
                  'https://firebasestorage.googleapis.com/v0/b/chiemerievictor001.appspot.com/o/Battlefield-of-the-Mind-Meyer.pdf?alt=media&token=b641ee16-32d4-444a-8a12-6c2095ef830e');
            },
            child: Row(
              children: [
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Battlefield Of the Mind by JOYCE MEYER',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
