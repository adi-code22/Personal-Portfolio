import 'package:flutter/material.dart';

class MobileProject extends StatelessWidget {
  final Function ontab;
  final String image;
  final String text;
  final String desc;

  MobileProject({this.ontab, this.image, this.text, this.desc});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ontab,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text ?? " ",
                style: TextStyle(
                    fontSize: 20, color: Colors.white.withOpacity(0.8)),
              ),
            ),
            Text(
              desc ?? " ",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 15, color: Colors.white.withOpacity(0.4)),
            )
          ],
        ),
      ),
    );
  }
}
