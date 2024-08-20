import 'dart:ffi';

import 'package:flutter/material.dart';

class mainButton extends StatelessWidget {
  final VoidCallback? callback;
  final IconData? icon;
  final Color? bgColor;
  final String name;
  final TextStyle? textStyle;
  final Color? iconColor;
  final double? iconWeight;

  mainButton(
      {required this.name,
      this.bgColor,
      this.icon,
      this.textStyle,
      this.callback,
      this.iconColor,
      this.iconWeight});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 140,
        child: ElevatedButton(
            onPressed: () {
              callback!();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
            ),
            child: icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon!,
                        color: iconColor,
                      ),
                      Container(
                        width: 10,
                        height: 0,
                      ),
                      Text(
                        name,
                        style: textStyle,
                      ),
                    ],
                  )
                : Text(
                    name,
                    style: textStyle,
                  )),
      ),
    );
  }
}
