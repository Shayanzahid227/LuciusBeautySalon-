import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class Stackconcept extends StatefulWidget {
  const Stackconcept({super.key});

  @override
  State<Stackconcept> createState() => _StackconceptState();
}

class _StackconceptState extends State<Stackconcept> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenheight * 0.65,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: const Image(
                    image: AssetImage("$staticAssets/details.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                // ListTile(
                //   leading: CircleAvatar(
                //     backgroundColor: Colors.red,
                //   ),
                //   title: Text("kskkk"),
                //   subtitle: Text("jsjsj"),
                //   trailing: Text("eyeys"),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}
