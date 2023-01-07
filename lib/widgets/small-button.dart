import 'package:flutter/material.dart';

import '../themes/colors.dart';

class SmallButton extends StatelessWidget {
  final dynamic onPressed;
  final showLoading;
  final label;
  final backgroundColor;
  const SmallButton(
      {Key? key,
      this.onPressed,
      required this.showLoading,
      required this.label,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200,
        child: ElevatedButton(
          onPressed: onPressed,
          // icon: Icon(Icons.send_outlined),
          child: Stack(children: [
            Visibility(
                maintainSize: false, visible: !showLoading, child: Text(label)),
            Visibility(
              maintainSize: false,
              visible: showLoading,
              child: CircularProgressIndicator(
                backgroundColor: Colors.white,
              ),
            )
          ]),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
