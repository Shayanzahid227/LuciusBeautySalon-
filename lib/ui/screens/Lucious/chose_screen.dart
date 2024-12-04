import 'package:figma_creation_task/ui/screens/Lucious/home_booking/home_booking.dart';
import 'package:figma_creation_task/ui/screens/Lucious/on_shoop_Book/book.dart';
import 'package:flutter/material.dart';

class ChoseScreen_0 extends StatefulWidget {
  const ChoseScreen_0({super.key});

  @override
  State<ChoseScreen_0> createState() => _ChoseScreen_0State();
}

class _ChoseScreen_0State extends State<ChoseScreen_0> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.4),
            Container(
                decoration: BoxDecoration(color: Colors.red),
                height: screenHeight * 0.09,
                width: screenwidth * 0.7,
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnShopBookScreen_0(),
                        ));
                  },
                  child: Text(
                    "Shop services",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ))),
            SizedBox(height: screenHeight * 0.09),
            Container(
                decoration: BoxDecoration(color: Colors.red),
                height: screenHeight * 0.09,
                width: screenwidth * 0.7,
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeBooking_0(),
                        ));
                  },
                  child: Text(
                    "Home services",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
