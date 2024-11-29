import 'dart:ffi';

import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class ProfileSCreen_00 extends StatefulWidget {
  const ProfileSCreen_00({super.key});

  @override
  State<ProfileSCreen_00> createState() => _ProfileSCreen_00State();
}

class _ProfileSCreen_00State extends State<ProfileSCreen_00> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 154,
                width: 154,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xfffe38577)),
                    color: Colors.transparent),
                child: CircleAvatar(
                  //radius: 77,
                  child: Image.asset(
                    color: Colors.transparent,
                    "$staticAssets/FB.png",
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              "Shayan zahid",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "shayanzahid227@gmai.com",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              width: 133,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Color(0xfffe38577),
              ),
              child: Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
