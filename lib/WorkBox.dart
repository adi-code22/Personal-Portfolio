import 'package:flutter/material.dart';
import 'package:web_d/WorkCustomData.dart';

class WorkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WorkCustomData(
          title: "Software Engineer",
          subTitle: "Baton Systems | Chennai",
          duration: "February 2023 - Present",
        ),
        WorkCustomData(
          title: "Chief Executive Officer",
          subTitle: "IEDC CCE | Irinjalakuda",
          duration: "July 2022 - Present",
        ),
        WorkCustomData(
          title: "Full Stack Flutter Dev Intern",
          subTitle: "Agriday | Remote",
          duration: "Apr 2022 - June 2022",
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
