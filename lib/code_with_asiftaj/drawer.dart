import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
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
        title: Text("Drawer Practice"),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPictureSize: Size(60, 60),
                  currentAccountPicture: CircleAvatar(
                    child: Image.asset("$staticAssets/FB.png"),
                  ),
                  decoration: BoxDecoration(color: Colors.purple[500]),
                  accountName: Text(
                    "Shayan xahid",
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: Text(
                    "shayanzahid227@gmail.com",
                    style: TextStyle(color: Colors.black),
                  )),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RootScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.calendar_month_rounded),
                title: Text("Calendar"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("setting"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.history),
                title: Text("History"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Help"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.feedback),
                title: Text("Send feedBack"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Column(),
    );
  }
}
