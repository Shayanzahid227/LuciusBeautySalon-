import 'package:figma_creation_task/ui/screens/shahab/sigin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ok extends StatefulWidget {
  const ok({super.key});

  @override
  State<ok> createState() => _okState();
}

class _okState extends State<ok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100.h),
            const CustomTextField(
                hintText: "enter your email", showVisibilityToggle: false),
          ],
        ),
      ),
    );
  }
}
