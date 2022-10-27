import 'package:flutter/material.dart';
import 'package:real_estate/utilis/consant.dart';

class BorderIcon extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final double? height, width;

  const BorderIcon(
      {super.key,
        this.padding,
       this.height,
       this.width,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:  BoxDecoration(
        color: COLOR_White,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: COLOR_Grey.withAlpha(40),width: 2)
      ),
      padding: padding??const EdgeInsets.all(8),
      child: Center(child: child,),
    );
  }
}
