import 'package:flutter/material.dart';
import 'package:web_d/WorkCustomData.dart';

class WorkBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Data Analyst Intern",
          subTitle: "EY India | Kochi",
          duration: "October 2022 - February 2023",
        ),
        WorkCustomData(
          title: "GDSC Lead",
          subTitle: "Google Developer Student Clubs | CCE",
          duration: "August 2022 - Present",
        ),
        WorkCustomData(
          title: "Full Stack Flutter Dev Intern",
          subTitle: "Noob Communtity | Remote",
          duration: "Apr 2021 - June 2021",
        ),
        // WorkCustomData(
        //   title: "Postman Student Expert",
        //   subTitle: "Postman",
        //   duration: "Aug,2021 - Present",
        // ),
        // WorkCustomData(
        //   title: "Founder - funccFORCE",
        //   subTitle: "A women centric community",
        //   duration: "Oct,2020 - Present",
        // ),
      ],
    );
  }
}
