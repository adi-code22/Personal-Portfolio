import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_d/MobileWorkBox.dart';

class MobileWork extends StatefulWidget {
  @override
  _MobileWorkState createState() => _MobileWorkState();
}

class _MobileWorkState extends State<MobileWork> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.3,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.07,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 1.2,
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        /*Center(
                          child: VerticalDivider(
                            color: Color(0xff64FFDA),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),*/
                        Container(
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage: Image.network(
                                        "https://batonsystems.com/wp-content/uploads/2021/10/Group-422.png")
                                    .image,
                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage: Image.network(
                                        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/EY_logo_2019.svg/330px-EY_logo_2019.svg.png")
                                    .image,

                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    Image.asset("images/iedc.png").image,
                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    Image.asset("images/gdsc.png").image,
                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage: Image.network(
                                        "https://cdn.iconscout.com/icon/free/png-256/free-flutter-2038877-1720090.png")
                                    .image,
                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                              CircleAvatar(
                                radius: size.width * 0.05,
                                backgroundColor: Colors.transparent,
                                backgroundImage: Image.network(
                                        "https://cdn.iconscout.com/icon/free/png-256/free-flutter-2038877-1720090.png")
                                    .image,
                                // child: FaIcon(FontAwesomeIcons.crown,
                                //     color: Colors.black),
                              ),
                            ],
                          )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    height: size.height * 1.2,
                    child: MobileWorkBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
