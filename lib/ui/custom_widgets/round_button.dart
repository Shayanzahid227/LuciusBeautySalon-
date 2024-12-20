import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String tittle;
  const RoundButton({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(tittle),
      ),
    );
  }
}
