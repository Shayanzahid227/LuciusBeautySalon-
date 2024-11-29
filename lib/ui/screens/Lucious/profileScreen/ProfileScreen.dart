import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen_0 extends StatefulWidget {
  const ProfileScreen_0({super.key});

  @override
  State<ProfileScreen_0> createState() => _ProfileScreen_0State();
}

class _ProfileScreen_0State extends State<ProfileScreen_0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20),
        child: Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
