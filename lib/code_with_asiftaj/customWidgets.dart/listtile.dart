import 'package:figma_creation_task/code_with_asiftaj/customWidgets.dart/listtileModel.dart';
import 'package:flutter/material.dart';

// Custom widget for ListTile with CircleAvatar
class CustomListTile extends StatelessWidget {
  Listtilemodel object_listtilemodel = Listtilemodel();
  // final String imagePath;
  // final String title;
  // final String subtitle;
  // final String trailingText;

  CustomListTile({super.key, required this.object_listtilemodel

      // required this.imagePath,
      // required this.title,
      // required this.subtitle,
      // required this.trailingText,
      });

  @override
  Widget build(BuildContext context) {
    // Divider();
    return ListTile(
      leading: CircleAvatar(
          radius: 20,
          backgroundColor: const Color.fromARGB(255, 9, 8, 5),
          child: Image.asset("${object_listtilemodel.imgUrl}")),
      title: Text("${object_listtilemodel.tittle}"),
      subtitle: Text("${object_listtilemodel.subTittle}"),
      trailing: Text("${object_listtilemodel.trailing}"),
    );
  }
}
