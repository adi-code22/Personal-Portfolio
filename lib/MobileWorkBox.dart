import 'package:flutter/material.dart';
import 'package:web_d/WorkCustomData.dart';

class MobileWorkBox extends StatelessWidget {
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
          title: "Data Analyst Intern",
          subTitle: "EY India | Kochi",
          duration: "October 2022 - February 2023",
        ),
        WorkCustomData(
          title: "Chief Executive Officer",
          subTitle: "IEDC CCE | Irinjalakuda",
          duration: "July 2022 - Present",
        ),
        WorkCustomData(
          title: "GDSC Lead",
          subTitle: "Google Developer Student Clubs | CCE",
          duration: "August 2022 - Present",
        ),
        WorkCustomData(
          title: "Full Stack Flutter Dev Intern",
          subTitle: "Agriday | Remote",
          duration: "Apr 2022 - June 2022",
        ),
        WorkCustomData(
          title: "Full Stack Flutter Dev Intern",
          subTitle: "Noob Communtity | Remote",
          duration: "Apr 2021 - June 2021",
        ),
      ],
    );
  }
}
