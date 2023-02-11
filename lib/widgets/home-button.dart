// ignore_for_file: prefer__ructors, prefer__literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeButton extends StatelessWidget {
  final String label;
  final String assetImagePath;
  final String? numberSubmitted;

  HomeButton(
      {required this.label,
      Key? key,
      required this.assetImagePath,
      this.numberSubmitted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        //width: MediaQuery.of(context).size.width * 0.4,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            // border: Border.all(color: Color.fromARGB(255, 212, 244, 250)),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 25.0, // soften the shadow
                spreadRadius: 5.0, //extend the shadow
                // offset: Offset(
                //   15.0, // Move to right 10  horizontally
                //   15.0, // Move to bottom 10 Vertically
                // ),
              )
            ],
            color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(assetImagePath, width: 64, height: 64),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(label),
            )
          ],
        ),
      ),
    );
  }
}
