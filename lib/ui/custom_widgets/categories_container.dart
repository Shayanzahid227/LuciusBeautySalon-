import 'package:flutter/material.dart';

class GoogleIconButton extends StatelessWidget {
  final VoidCallback onPressed; // Callback for when the button is pressed
  final double size; // Size of the icon button
  final String imagePath; // Path to the icon asset

  const GoogleIconButton({
    Key? key,
    required this.onPressed,
    this.size = 40.0, // Default size for the icon
    required this.imagePath, // Image path should be required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        imagePath, // Use the passed image path
        width: size,
        height: size,
      ),
      onPressed: onPressed, // Call the provided callback on press
      padding: EdgeInsets.zero, // Remove padding for a compact button
    );
  }
}
