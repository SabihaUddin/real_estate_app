import 'package:flutter/material.dart';

import '../utilis/consant.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton(
      {super.key, required this.text, required this.icon, required this.width});


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.indigo,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(icon, color: COLOR_White,),
          const SizedBox(
            width: 10,
          ),
          Text(text, style: const TextStyle(
              color: COLOR_White
          ),
          )
        ],
      ),

    );
  }
}
