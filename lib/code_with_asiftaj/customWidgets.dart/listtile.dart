import 'package:figma_creation_task/code_with_asiftaj/customWidgets.dart/listtileModel.dart';
import 'package:flutter/material.dart';

// Custom widget for ListTile with CircleAvatar
// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  // ignore: non_constant_identifier_names
  Listtilemodel Object_ListtileModel = Listtilemodel();
  // final String imagePath;
  // final String title;
  // final String subtitle;
  // final String trailingText;

  // ignore: non_constant_identifier_names
  CustomListTile({super.key, required this.Object_ListtileModel

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
          child: Image.asset("${Object_ListtileModel.imgUrl}")),
      title: Text("${Object_ListtileModel.tittle}"),
      subtitle: Text("${Object_ListtileModel.subTittle}"),
      trailing: Text("${Object_ListtileModel.trailing}"),
    );
  }
}
