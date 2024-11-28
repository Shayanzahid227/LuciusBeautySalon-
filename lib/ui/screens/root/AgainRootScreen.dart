// import 'package:figma_creation_task/core/constant/string.dart';
// import 'package:figma_creation_task/ui/custom_widgets/bottom_navigator_bar/naviagator_bar.dart';

// import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
// import 'package:figma_creation_task/ui/screens/test/qqqq.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:provider/provider.dart';

// class RootScreenAgain_00 extends StatelessWidget {
//   // RootScreenAgain_00({super.key});
//   int? SelectedScreen;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   RootScreenAgain_00({super.key, this.SelectedScreen});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//         create: (context) => RootViewModel(SelectedScreen),
//         child: Consumer<RootViewModel>(
//           builder: (context, model, child) => Scaffold(
//             //  key: _scaffoldKey,
//             backgroundColor: Colors.purple[200],

//             // body
//             body: model.allScreen[model.selectedScreen],
//             // body navigatio bar
//             bottomNavigationBar: Container(
//               width: double.infinity,
//               height: 78.h,
//               decoration: BoxDecoration(boxShadow: [
//                 BoxShadow(
//                     color: Colors.black.withOpacity(0.08),
//                     offset: const Offset(0, 1),
//                     blurRadius: 7.r,
//                     spreadRadius: 0),
//               ]),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       model.updatedScreen(0);
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(10),
//                       decoration: BoxDecoration(
//                         color: model.selectedScreen == 0
//                             ? Color(0xfffe38577)
//                             : Colors.transparent,
//                       ),
//                       child: Image.asset(
//                         "$staticAssets/home1.png",
//                         color: model.selectedScreen == 0
//                             ? Colors.white
//                             : Colors.grey,
//                       ),
//                     ),
//                   ),
//                   BottomNavigatorBar(
//                       image: "$staticAssets/booking1.png",
//                       onTap: () {
//                         model.updatedScreen(1);
//                       },
//                       boxColor: model.selectedScreen == 1
//                           ? Color(0xfffe3577)
//                           : Colors.transparent,
//                       iconColor: model.selectedScreen == 1
//                           ? Colors.white
//                           : Colors.grey),
//                   BottomNavigatorBar(
//                       image: "$staticAssets/person1.png",
//                       onTap: () {
//                         model.updatedScreen(2);
//                       },
//                       boxColor: model.selectedScreen == 2
//                           ? Color(0xfffe35877)
//                           : Colors.transparent,
//                       iconColor: model.selectedScreen == 2
//                           ? Colors.white
//                           : Colors.grey)

//                   // GestureDetector(
//                   //   onTap: () {
//                   //     model.updatedScreen(1);
//                   //   },
//                   //   child: Container(
//                   //     decoration: BoxDecoration(
//                   //         color: model.selectedScreen == 1
//                   //             ? Color(0xfffe35877)
//                   //             : Color(0xfff888888)),
//                   //     child: Image.asset(
//                   //       "$staticAssets.booking1.png",
//                   //       color: model.selectedScreen == 0
//                   //           ? Color(0xfffe35877)
//                   //           : Colors.grey,
//                   //     ),
//                   //   ),
//                   // ),
//                   // GestureDetector(
//                   //   onTap: () {
//                   //     model.updatedScreen(1);
//                   //   },
//                   //   child: Container(
//                   //     decoration: BoxDecoration(
//                   //         color: model.selectedScreen == 1
//                   //             ? Color(0xfffe35877)
//                   //             : Color(0xfff888888)),
//                   //     child: Image.asset(
//                   //       "$staticAssets.booking1.png",
//                   //       color: model.selectedScreen == 0
//                   //           ? Color(0xfffe35877)
//                   //           : Colors.grey,
//                   //     ),
//                   //   ),
//                   // )
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
