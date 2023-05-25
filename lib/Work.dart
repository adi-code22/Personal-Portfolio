import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_d/CustomText.dart';
import 'package:web_d/WorkBox.dart';
import 'package:web_d/WorkBox2.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1,
      ),
      child: Column(
        children: [
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
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 0.8,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        // Center(
                        //   child: VerticalDivider(
                        //     color: Color(0xff303C55),
                        //     thickness: 1.75,
                        //     width: 10,
                        //     indent: 10,
                        //     endIndent: 10,
                        //   ),
                        // ),
                        Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://batonsystems.com/wp-content/uploads/2021/10/Group-422.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/iedc.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.iconscout.com/icon/free/png-256/free-flutter-2038877-1720090.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              // CircleAvatar(
                              //   backgroundColor: Color(0xffCCD6F6),
                              //   child: FaIcon(FontAwesomeIcons.crown,
                              //       color: Colors.black),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor: Color(0xffCCD6F6),
                              //   child: FaIcon(FontAwesomeIcons.blogger,
                              //       color: Colors.black),
                              // ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height * 0.8,
                    child: WorkBox(),
                  )),

              //WorkExperience #2
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 0.8,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        // Center(
                        //   child: VerticalDivider(
                        //     color: Color(0xff303C55),
                        //     thickness: 1.75,
                        //     width: 10,
                        //     indent: 10,
                        //     endIndent: 10,
                        //   ),
                        // ),
                        Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/EY_logo_2019.svg/330px-EY_logo_2019.svg.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("images/gdsc.png"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                height: size.height * 0.08,
                                width: size.width * 0.08,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.iconscout.com/icon/free/png-256/free-flutter-2038877-1720090.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              // CircleAvatar(
                              //   backgroundColor: Color(0xffCCD6F6),
                              //   child: FaIcon(FontAwesomeIcons.crown,
                              //       color: Colors.black),
                              // ),
                              // CircleAvatar(
                              //   backgroundColor: Color(0xffCCD6F6),
                              //   child: FaIcon(FontAwesomeIcons.blogger,
                              //       color: Colors.black),
                              // ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height * 0.8,
                    child: WorkBox2(),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
