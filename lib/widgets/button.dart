import 'package:flutter/material.dart';

import '../themes/colors.dart';

class Button extends StatelessWidget {
  final dynamic onPressed;
  final showLoading;
  final label;
  final backgroundColor;
  const Button(
      {Key? key,
      this.onPressed,
      required this.showLoading,
      this.label,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
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
