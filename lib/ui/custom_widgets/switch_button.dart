import 'package:flutter/material.dart';

class Switch_on_off_Button extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const Switch_on_off_Button({
    super.key,
    this.initialValue = false,
    required this.onChanged,
  });
  @override
  _CustomToggleButtonState createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<Switch_on_off_Button> {
  late bool _isToggled;

  @override
  void initState() {
    super.initState();
    _isToggled = widget.initialValue;
  }

  void _toggle() {
    setState(() {
      _isToggled = !_isToggled;
      widget.onChanged(_isToggled); // Notify parent about the change
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: Container(
        width: 58,
        height: 27,
        decoration: BoxDecoration(
          color: _isToggled ? const Color(0xfffdd854) : Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          alignment: _isToggled ? Alignment.centerRight : Alignment.centerLeft,
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: _isToggled ? 30 : 0,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
