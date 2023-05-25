import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:web_d/CustomText.dart';

class About extends StatelessWidget {
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.arrow_forward_ios_sharp,
          color: Color(0xffCCD6F6).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xffCCD6F6),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width - 100,
      child: Row(
        children: [
          //About me
          Container(
            height: size.height * 0.9,
            width: size.width / 2 - 100,
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
                      width: size.width * 0.01,
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
                      text: "Hey! This is Aditya, I'm from Kerala.\n\n",
                      textsize: 22.0,
                      color: Color(0xffCCD6F6),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "I am a final year B.Tech. undergrad in Computer Science and Engineering.\n\n",
                      textsize: 18.0,
                      color: Color(0xffCCD6F6),
                      letterSpacing: 0.75,
                    ),
                    CustomText(
                      text:
                          "Here are a few technologies, I've been working with recently:\n\n",
                      textsize: 18.0,
                      color: Color(0xffCCD6F6),
                      //fontWeight: FontWeight.w500,
                      letterSpacing: 0.75,
                    ),
                  ],
                ),

                Container(
                  height: size.height * 0.15,
                  width: size.width,
                  child: Wrap(
                    children: [
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            technology(context, "Flutter"),
                            technology(context, "Dart"),
                            technology(context, "Firebase"),
                            technology(context, "REST API"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.13,
                        height: size.height * 0.20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            technology(context, "Java"),
                            technology(context, "Springboot"),
                            technology(context, "MySQL"),
                            technology(context, "Hibernate, JPA"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            technology(context, "Git"),
                            technology(context, "Docker"),
                            technology(context, "AWS"),
                            technology(context, "Linux"),
                          ],
                        ),
                      ),
                      Container(
                        width: size.width * 0.1,
                        height: size.height * 0.20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            technology(context, "C/C++"),
                            technology(context, "RabbitMQ"),
                            technology(context, "Postman"),
                            technology(context, "Selenium"),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //Profile Image
          Expanded(
            child: Container(
              height: size.height / 1.5,
              width: size.width / 2 - 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: size.height * 0.10,
                    left: size.width * 0.100,
                    child: Card(
                      color: Colors.black12,
                      child: Container(
                        margin: EdgeInsets.all(2.75),
                        height: size.height / 2,
                        width: size.width / 5,
                        color: Color(0xFF6181B8),
                      ),
                    ),
                  ),
                  CustomImageAnimation()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({Key key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Colors.black12.withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Colors.black12.withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/aditya2.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            width: size.width / 5,
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}
