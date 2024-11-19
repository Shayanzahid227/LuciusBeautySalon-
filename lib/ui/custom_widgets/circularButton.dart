import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color backgroundColor;
  final double radius;

  const CircularButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor = const Color(0xfffeaeaea),
    this.radius = 18.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero, // ensures no extra padding
        ),
        child: Icon(
          icon,
          size: radius, // icon size proportional to the button
        ),
      ),
    );
  }
}
