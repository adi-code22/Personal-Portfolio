import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:web_d/About.dart';
import 'package:web_d/AppBarTitle.dart';
import 'package:web_d/CustomText.dart';
import 'package:web_d/FeatureProject.dart';
import 'package:web_d/Method.dart';
import 'package:web_d/Work.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method = Method();
  AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
        () => _isAppBarExpanded
            ? isExpaned != false
                ? setState(
                    () {
                      isExpaned = false;
                      print('setState is called');
                    },
                  )
                : {}
            : isExpaned != true
                ? setState(() {
                    print('setState is called');
                    isExpaned = true;
                  })
                : {},
      );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({int index, Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  final ScrollController _scontroller = new ScrollController();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            physics: ScrollPhysics(),
            primary: true,
            scrollDirection: Axis.vertical,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                end: Alignment.topRight,
                begin: Alignment.bottomLeft,
                colors: [const Color(0xff764BA2), const Color(0xff667EEA)],
              )),
              child: Column(
                children: [
                  //Mavigation Bar
                  Container(
                    height: size.height * 0.14,
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Spacer(),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DefaultTabController(
                                length: 5,
                                child: TabBar(
                                  indicatorColor: Colors.white,
                                  onTap: (index) async {
                                    _scrollToIndex(index);
                                  },
                                  tabs: [
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'About',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Experience',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Achievements',
                                      ),
                                    ),
                                    Tab(
                                      child: AppBarTitle(
                                        text: 'Project',
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () async {
                                        method.launchURL(
                                            "https://imaditya.tech/resume/Adityakrishnan.pdf");
                                      },
                                      child: AppBarTitle(
                                        text: 'Resume',
                                      ),
                                      //color: Colors.pink,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      //Social Icon
                      Container(
                        width: size.width * 0.09,
                        height: size.height - 82,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: FaIcon(FontAwesomeIcons.github),
                                color: Color(0xffffA8B2D1),
                                iconSize: 30.0,
                                //tooltip: "Github",
                                onPressed: () {
                                  method.launchURL(
                                      "https://github.com/adi-code22");
                                }),
                            IconButton(
                                icon: FaIcon(FontAwesomeIcons.linkedin),
                                color: Color(0xffffA8B2D1),
                                iconSize: 30.0,
                                // tooltip: "LinkedIn",
                                onPressed: () {
                                  method.launchURL(
                                      "https://www.linkedin.com/in/adi-code22/");
                                }),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.twitter),
                              color: Color(0xffffA8B2D1),
                              onPressed: () {
                                method.launchURL(
                                    "https://twitter.com/AdityaKrishnanP");
                              },
                              iconSize: 30.0,
                              //tooltip: "Twitter",
                            ),
                            IconButton(
                              icon: FaIcon(FontAwesomeIcons.instagram),
                              color: Color(0xffffA8B2D1),
                              onPressed: () {
                                method.launchURL(
                                    "https://www.instagram.com/adityakrishnan_22/?hl=en");
                              },
                              iconSize: 30.0,
                              //tooltip: "Instagram",
                            ),

                            // IconButton(
                            //     icon: Icon(Icons.call),
                            //     color: Color(0xffffA8B2D1),
                            //     iconSize: 16.0,
                            //     onPressed: () {
                            //       method.launchCaller();
                            //     }),
                            IconButton(
                                icon: Icon(Icons.mail),
                                color: Color(0xffffA8B2D1),
                                iconSize: 30.0,
                                //tooltip: "Mail",
                                onPressed: () {
                                  method.launchEmail();
                                }),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: size.height - 82,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: CustomScrollView(
                              controller: _autoScrollController,
                              slivers: <Widget>[
                                SliverList(
                                    delegate: SliverChildListDelegate([
                                  Center(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: size.height * 0.08,
                                        ),
                                        ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80)),
                                            child: Image.asset(
                                              "images/aditya.jpeg",
                                              width: 150,
                                              height: 150,
                                            )),

                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Adityakrishnan",
                                          style: TextStyle(
                                            color: Color(0xffCCD6F6),
                                            fontWeight: FontWeight.w900,
                                            fontSize: 68,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.0,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 200),
                                          child: Text(
                                            "I'm a final year engineering student who loves to explore new horizons in the latest IT technologies. A fast learner and team player with more than a year of Software Development experience. A passionate programmer and thriving analyst who has applied computer algorithms to solve real-world problems.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xffCCD6F6)
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.w700,
                                              fontSize: 30,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * .12,
                                        ),

                                        //get in tuch text

                                        SizedBox(
                                          height: size.height * 0.20,
                                        ),
                                      ],
                                    ),
                                  ),

                                  //About Me
                                  _wrapScrollTag(
                                    index: 0,
                                    child: About(),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),

                                  //Where I've Worked
                                  _wrapScrollTag(index: 1, child: Work()),
                                  SizedBox(
                                    height: size.height * 0.10,
                                  ),

//Get In Touch
                                  _wrapScrollTag(
                                    index: 2,
                                    child: Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            CustomText(
                                              text: "Achievements",
                                              textsize: 26.0,
                                              color: Color(0xffCCD6F6),
                                              fontWeight: FontWeight.w700,
                                            ),
                                            SizedBox(
                                              width: size.width * 0.01,
                                            ),
                                            Container(
                                              width: size.width / 4,
                                              height: 1.10,
                                              color: Color(0xff303C55),
                                            ),
                                          ],
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: size.height * 0.05,
                                              bottom: size.height * 0.05),
                                          child: Container(
                                            height: size.height * 0.8,
                                            width: size.width,
                                            child: ListView(
                                              children: [
                                                CarouselSlider(
                                                  items: [
                                                    //1st Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "images/hackp1.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),

                                                    // 2nd Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              "images/hackp2.jpeg"),
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),

                                                    //3rd Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              "images/hackp3.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),

                                                    //4th Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "images/ribc.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),

                                                    //5th Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "images/hackatly.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),

                                                    //6th Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "images/hackarch.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),

                                                    //7th Image of Slider
                                                    Container(
                                                      margin:
                                                          EdgeInsets.all(6.0),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "images/whyhack.jpeg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                  options: CarouselOptions(
                                                    height: size.height * 0.9,
                                                    enlargeCenterPage: true,
                                                    autoPlay: true,
                                                    aspectRatio: 16 / 9,
                                                    autoPlayCurve:
                                                        Curves.fastOutSlowIn,
                                                    enableInfiniteScroll: true,
                                                    autoPlayAnimationDuration:
                                                        Duration(
                                                            milliseconds: 800),
                                                    viewportFraction: 0.8,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        // Container(
                                        //   height: size.height * 0.68,
                                        //   width: MediaQuery.of(context)
                                        //           .size
                                        //           .width -
                                        //       100,
                                        //   //color: Colors.orange,
                                        //   child: Column(
                                        //     mainAxisAlignment:
                                        //         MainAxisAlignment.center,
                                        //     children: [
                                        //       CustomText(
                                        //         text: "Get In Touch",
                                        //         textsize: 42.0,
                                        //         color: Colors.white,
                                        //         letterSpacing: 3.0,
                                        //         fontWeight: FontWeight.w700,
                                        //       ),
                                        //       SizedBox(
                                        //         height: 16.0,
                                        //       ),
                                        //       Wrap(
                                        //         children: [
                                        //           Text(
                                        //             "Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                        //             textAlign: TextAlign.center,
                                        //             style: TextStyle(
                                        //               color: Colors.white
                                        //                   .withOpacity(0.4),
                                        //               letterSpacing: 0.75,
                                        //               fontSize: 17.0,
                                        //             ),
                                        //           ),
                                        //         ],
                                        //       ),
                                        //       SizedBox(
                                        //         height: 32.0,
                                        //       ),
                                        //       InkWell(
                                        //         onTap: () {
                                        //           method.launchEmail();
                                        //         },
                                        //         child: Card(
                                        //           elevation: 4.0,
                                        //           color: Colors.black,
                                        //           shape: RoundedRectangleBorder(
                                        //             borderRadius:
                                        //                 BorderRadius.circular(
                                        //                     6.0),
                                        //           ),
                                        //           child: Container(
                                        //             margin:
                                        //                 EdgeInsets.all(0.85),
                                        //             height: size.height * 0.09,
                                        //             width: size.width * 0.10,
                                        //             alignment: Alignment.center,
                                        //             decoration: BoxDecoration(
                                        //               color: Color(0xff83a0e0),
                                        //               borderRadius:
                                        //                   BorderRadius.circular(
                                        //                       6.0),
                                        //             ),
                                        //             child: Padding(
                                        //               padding: const EdgeInsets
                                        //                   .symmetric(
                                        //                 horizontal: 8.0,
                                        //               ),
                                        //               child: Text(
                                        //                 "Say Hello",
                                        //                 style: TextStyle(
                                        //                   color: Colors.black,
                                        //                 ),
                                        //               ),
                                        //             ),
                                        //           ),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),

                                        //Footer
                                        // Container(
                                        //   alignment: Alignment.center,
                                        //   height: MediaQuery.of(context)
                                        //           .size
                                        //           .height /
                                        //       30,
                                        //   width: MediaQuery.of(context)
                                        //           .size
                                        //           .width -
                                        //       100,
                                        //   //color: Colors.white,
                                        //   child: Text(
                                        //     "Made with ❤️ in Flutter Web",
                                        //     style: TextStyle(
                                        //       color:
                                        //           Colors.white.withOpacity(0.4),
                                        //       letterSpacing: 1.75,
                                        //       fontSize: 14.0,
                                        //     ),
                                        //   ),
                                        // ),
                                        // Container(
                                        //   alignment: Alignment.center,
                                        //   height: MediaQuery.of(context)
                                        //           .size
                                        //           .height /
                                        //       6,
                                        //   width: MediaQuery.of(context)
                                        //           .size
                                        //           .width -
                                        //       100,
                                        //   //color: Colors.white,
                                        //   child: Text(
                                        //     "Designed & Built by ADITYAKRISHNAN",
                                        //     style: TextStyle(
                                        //       color:
                                        //           Colors.white.withOpacity(0.4),
                                        //       letterSpacing: 1.75,
                                        //       fontSize: 14.0,
                                        //     ),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),

                                  //Some Things I've Built Main Project
                                  _wrapScrollTag(
                                      index: 3,
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text("What I've build",
                                                  style: TextStyle(
                                                    fontSize: 26.0,
                                                    color: Color(0xffCCD6F6),
                                                    fontWeight: FontWeight.w700,
                                                  )),
                                              SizedBox(
                                                width: 26.0,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    4,
                                                height: 0.75,
                                                color: Color(0xff303C55),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),
                                          FeatureProject(
                                            imagePath: "images/trawell.png",
                                            ontab: () {
                                              method.launchURL(
                                                  "https://github.com/adi-code22/TraWell-App");
                                            },
                                            projectDesc:
                                                "your Smart travel buddy, powered by AI. A tourist guide which aids in easy navigation, communication and guidance throughout the journey.",
                                            projectTitle: "TraWell App",
                                            tech1: "Flutter",
                                            tech2: "Dart",
                                            tech3: "Java/Springboot",
                                          ),
                                          FeatureProject(
                                            imagePath: "images/swift.png",
                                            ontab: () {
                                              method.launchURL(
                                                  "https://github.com/adi-code22/SwiftPay");
                                            },
                                            projectDesc:
                                                "SwiftPay is an application that simulates the operations of a Bank with Cash & Non-Cash accounts. The simulator allows for setting up new accounts with initial balances (in different asset classes and currencies) and updating these balances in response to SWIFT messages.",
                                            projectTitle: "SwiftPay",
                                            tech1: "Java/Springboot",
                                            tech2: "MySQL",
                                            tech3: "Docker, AWS",
                                          ),
                                          FeatureProject(
                                            imagePath: "images/lyft.png",
                                            ontab: () {
                                              method.launchURL(
                                                  "https://github.com/adi-code22/Lyft-App");
                                            },
                                            projectDesc:
                                                "Decentralized auto-cab booking application. The application allows users to book a cab and also allows cab drivers to register and accept bookings.",
                                            projectTitle: "Lyft App",
                                            tech1: "Dart",
                                            tech2: "Flutter",
                                            tech3: "Blockchain",
                                          ),
                                          FeatureProject(
                                            imagePath: "images/train.png",
                                            ontab: () {
                                              method.launchURL(
                                                  "https://github.com/adi-code22/Train-Ticketing-System-using-JAVA");
                                            },
                                            projectDesc:
                                                "The train ticketing system takes queries from the user regarding the destination, type of passenger, and ticket type. This then calculates the ticket fare relative to the distance between both these places.",
                                            projectTitle:
                                                "JAVA Train Ticketing System",
                                            tech1: "Java",
                                            tech2: "Swing, AWT",
                                          ),
                                        ],
                                      )),

                                  //other Project
                                  SizedBox(
                                    height: 6.0,
                                  ),

                                  //Get In Touch
                                  _wrapScrollTag(
                                    index: 2,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.68,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          // color: Colors.orange,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: "Get In Touch",
                                                textsize: 42.0,
                                                color: Colors.white,
                                                letterSpacing: 3.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              SizedBox(
                                                height: 16.0,
                                              ),
                                              Wrap(
                                                children: [
                                                  Text(
                                                    "Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4),
                                                      letterSpacing: 0.75,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 32.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  method.launchEmail();
                                                },
                                                child: Card(
                                                  elevation: 4.0,
                                                  color: Colors.black,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.all(0.85),
                                                    height: size.height * 0.09,
                                                    width: size.width * 0.10,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff83a0e0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.0),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 8.0,
                                                      ),
                                                      child: Text(
                                                        "Say Hello",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Footer
                                        Container(
                                          alignment: Alignment.center,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              30,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          //color: Colors.white,
                                          child: Text(
                                            "Made with ❤️ in Flutter Web",
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                              letterSpacing: 1.75,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              6,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          //color: Colors.white,
                                          child: Text(
                                            "Designed & Built by ADITYAKRISHNAN",
                                            style: TextStyle(
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                              letterSpacing: 1.75,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ])),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.07,
                        height: MediaQuery.of(context).size.height - 82,
                        //color: Colors.orange,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RotatedBox(
                              quarterTurns: 45,
                              child: Text(
                                "adityakrishnanp007@gmail.com",
                                style: TextStyle(
                                  color: Color(0xffffA8B2D1),
                                  letterSpacing: 3.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
