import 'package:figma_creation_task/core/constant/string.dart';

import 'package:figma_creation_task/ui/screens/root/root_screen.dart';
import 'package:flutter/material.dart';

class DrawerPractice extends StatefulWidget {
  const DrawerPractice({super.key});

  @override
  State<DrawerPractice> createState() => _DrawerPracticeState();
}

class _DrawerPracticeState extends State<DrawerPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[500],
        title: const Text("Drawer Practice"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPictureSize: const Size(60, 60),
                  currentAccountPicture: CircleAvatar(
                    child: Image.asset("$staticAssets/FB.png"),
                  ),
                  decoration: BoxDecoration(color: Colors.purple[500]),
                  accountName: const Text(
                    "Shayan xahid",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: const Text(
                    "shayanzahid227@gmail.com",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RootScreen(),
                      ));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.calendar_month_rounded),
                title: const Text("Calendar"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("setting"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.history),
                title: const Text("History"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("Help"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.feedback),
                title: const Text("Send feedBack"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: const Column(),
    );
  }
}
