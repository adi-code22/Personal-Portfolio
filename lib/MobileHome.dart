import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_d/CustomText.dart';
import 'package:web_d/Method.dart';
import 'package:web_d/MobileProject.dart';
import 'package:web_d/MobileWork.dart';

class MobileHome extends StatefulWidget {
  @override
  _MobileHomeState createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  Widget technology(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffCCD6F6).withOpacity(0.6),
            size: 14.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffCCD6F6),
              letterSpacing: 1.75,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("images/aditya.jpeg"),
                  ),
                  accountName: Text(
                    "Adityakrishnan",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text("adityakrishnanp007@gmail.com")),
              // ListTile(
              //   title: Text("Share"),
              //   leading: Icon(Icons.share),
              // ),
              // ListTile(
              //   leading: Icon(Icons.group),
              //   title: Text("About"),
              // ),
              Expanded(
                child: Text("Website Version 1.0.1"),
              )
            ],
          )),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: AppBar(
              title: Text(''),
              elevation: 0.0,
              backgroundColor: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
        preferredSize: Size(
          double.infinity,
          56.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            end: Alignment.topRight,
            begin: Alignment.bottomLeft,
            colors: [const Color(0xff764BA2), const Color(0xff667EEA)],
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * 0.15,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(80)),
                    child: Image.asset(
                      "images/aditya.jpeg",
                      width: 150,
                      height: 150,
                    )),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Adityakrishnan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffCCD6F6),
                    fontWeight: FontWeight.w900,
                    fontSize: 52,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "I'm a final year engineering student who loves to explore new horizons in the latest IT technologies. A fast learner and team player with more than a year of Software Development experience. A passionate programmer and thriving analyst who has applied computer algorithms to solve real-world problems.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffCCD6F6).withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                  ),
                ),
                /*SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    children: [
                      Text(
                        "Engineering student at Banasthali Vidyapith",
                        style: TextStyle(
                          color: Color(0xffCCD6F6),
                          fontSize: 15.0,
                          letterSpacing: 2.75,
                          wordSpacing: 0.75,
                        ),
                      )
                    ],
                  ),
                ),*/
                SizedBox(
                  height: size.height * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/adi-code22");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/adi-code22/");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.medium,
                        color: Color(0xffffA8B2D1),
                        size: 18.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://medium.com/@adityakrishnanp007");
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),

                //About me
                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    width: size.width,
                    //color: Colors.purple,
                    child: Column(
                      children: [
                        //About me title
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomText(
                              text: "About Me",
                              textsize: 26.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.01,
                            ),
                            Container(
                              width: size.width / 4,
                              height: 1.10,
                              color: Color(0xff303C55),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.07,
                        ),

                        //About me desc
                        Wrap(
                          children: [
                            CustomText(
                              text: "Hello! Aditya here, I'm from Kerala\n",
                              textsize: 16.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                                  "I am a final year B.Tech. undergrad in Computer Science and Engineering.\n",
                              textsize: 16.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                            CustomText(
                              text:
                                  "Here are a few technologies, I've been working with recently:\n\n",
                              textsize: 16.0,
                              color: Color(0xffCCD6F6),
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.75,
                            ),
                          ],
                        ),

                        SizedBox(
                          height: size.height * 0.06,
                        ),

                        Container(
                          width: size.width,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "Flutter"),
                                  technology(context, "Dart"),
                                  technology(context, "Firebase"),
                                  technology(context, "REST API"),
                                  technology(context, "C/C++"),
                                  technology(context, "RabbitMQ"),
                                  technology(context, "Postman"),
                                  technology(context, "Selenium"),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  technology(context, "Java"),
                                  technology(context, "Springboot"),
                                  technology(context, "MySQL"),
                                  technology(context, "Hibernate, JPA"),
                                  technology(context, "Git"),
                                  technology(context, "Docker"),
                                  technology(context, "AWS"),
                                  technology(context, "Linux"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.08,
                ),

                //Image
                /*Center(
                  child: Container(
                    height: size.height * 0.6,
                    width: size.width * 0.7,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          right: 20,
                          left: 50.0,
                          child: Card(
                            color: Color(0xFF6181B8),
                            child: Container(
                              margin: EdgeInsets.all(2.75),
                              height: size.height * 0.45,
                              width: size.width * 0.66,
                              color: Color(0xff0A192F),
                            ),
                          ),
                        ),
                        
                        Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          color: Color(0xFF6181B8).withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ),*/

                //Where I've Worked title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Experience",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                MobileWork(),

                SizedBox(
                  height: size.height * 0.07,
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Achievements",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Container(
                    height: size.height * 0.8,
                    width: size.width,
                    child: ListView(
                      children: [
                        CarouselSlider(
                          items: [
                            //1st Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/hackp1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            // 2nd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("images/hackp2.jpeg"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            //3rd Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage("images/hackp3.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //4th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/ribc.jpeg"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            //5th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/hackatly.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //6th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/hackarch.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            //7th Image of Slider
                            Container(
                              margin: EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: AssetImage("images/whyhack.jpeg"),
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
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enableInfiniteScroll: true,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 0.8,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                //Some Things I've Built title
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "What I've build",
                      textsize: 26.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      width: size.width / 4,
                      height: 1.10,
                      color: Color(0xff303C55),
                    ),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method
                        .launchURL("https://github.com/adi-code22/TraWell-App");
                  },
                  image: "images/trawell.png",
                  text: "TraWell App",
                  desc:
                      "your Smart travel buddy, powered by AI. A tourist guide which aids in easy navigation, communication and guidance throughout the journey.",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.launchURL("https://github.com/adi-code22/SwiftPay");
                  },
                  image: "images/swift.png",
                  text: "SwiftPay",
                  desc:
                      "SwiftPay is an application that simulates the operations of a Bank with Cash & Non-Cash accounts. The simulator allows for setting up new accounts with initial balances (in different asset classes and currencies) and updating these balances in response to SWIFT messages.",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.launchURL("https://github.com/adi-code22/Lyft-App");
                  },
                  image: "images/lyft.png",
                  text: "Lyft App",
                  desc:
                      "Decentralized auto-cab booking application. The application allows users to book a cab and also allows cab drivers to register and accept bookings.",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                MobileProject(
                  ontab: () {
                    method.launchURL(
                        "https://github.com/adi-code22/Train-Ticketing-System-using-JAVA");
                  },
                  image: "images/train.png",
                  text: "JAVA Train Ticketing System",
                  desc:
                      "The train ticketing system takes queries from the user regarding the destination, type of passenger, and ticket type. This then calculates the ticket fare relative to the distance between both these places.",
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                FittedBox(
                  fit: BoxFit.cover,
                  child: Container(
                    //height: size.aspectRatio,
                    width: size.width,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 16.0,
                        ),
                        CustomText(
                          text: "Get In Touch",
                          textsize: 42.0,
                          color: Colors.white,
                          letterSpacing: 3.0,
                          fontWeight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Wrap(
                          alignment: WrapAlignment.center,
                          children: [
                            Text(
                              "Whether you have a question or just want to say hi, I'll try my best to get back to you!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.4),
                                letterSpacing: 0.75,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        GestureDetector(
                          onTap: () {
                            method.launchEmail();
                          },
                          child: Card(
                            elevation: 4.0,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(0.85),
                              height: size.height * 0.10,
                              width: size.width * 0.30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff83a0e0),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Say Hello",
                                  style: TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/adi-code22");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/adi-code22/");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.medium,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://medium.com/@adityakrishnanp007");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Color(0xffffA8B2D1),
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://twitter.com/AdityaKrishnanP");
                      },
                    ),
                    IconButton(
                      icon: FaIcon(FontAwesomeIcons.instagram),
                      color: Color(0xffffA8B2D1),
                      onPressed: () {
                        method.launchURL(
                            "https://www.instagram.com/adityakrishnan_22/?hl=en");
                      },
                      iconSize: 15.0,
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
                        iconSize: 16.0,
                        onPressed: () {
                          method.launchEmail();
                        }),
                  ],
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Footer
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 30,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.white,
                      child: Text(
                        "Made with ❤️ in Flutter Web",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 1.75,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 6,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.white,
                      child: Text(
                        "Designed & Built by ADITYAKRISHNAN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.4),
                          letterSpacing: 1.75,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
