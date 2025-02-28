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
            const Row(
              children: [
                Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 154,
                width: 155,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xfffe38577)),
                    color: Colors.transparent),
                child: const CircleAvatar(
                  // why this image radius can not reduce
                  radius: 10,
                  backgroundImage: AssetImage("$staticAssets/FB.png"),
                  //radius: 77,
                  // child: Image.asset(
                  //   color: Colors.transparent,
                  //   "$staticAssets/FB.png",
                  //   fit: BoxFit.cover,
                  // ),
                )),
            const SizedBox(
              height: 26,
            ),
            const Text(
              "Shayan zahid",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              "shayanzahid227@gmai.com",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 45,
              width: 135,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xfffe38577),
              ),
              child: const Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(right: 26.0),
              child: Divider(
                color: Colors.grey,
                thickness: 0.8,
              ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "About Us",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 220),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 26.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.4,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 26.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.4,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Career",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 240),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 26.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.4,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 26.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.4,
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "Price and Plaining",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const SizedBox(width: 140),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 26.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.4,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 26.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.4,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Logout",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfffe38577)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
