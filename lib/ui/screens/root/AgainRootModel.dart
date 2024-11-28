// import 'package:figma_creation_task/code_with_asiftaj/againCalander.dart';
// import 'package:figma_creation_task/core/enums/view_state.dart';
// import 'package:figma_creation_task/core/other/Base_view_model.dart';
// import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
// import 'package:figma_creation_task/ui/screens/Lucious/profileScreen/ProfileScreen.dart';
// import 'package:flutter/material.dart';

// class RootViewModellAgain extends BaseViewModel {
//   // as root screen call so the screen on zero index will be open
//   int selectedScreen2 = 0;
//   List<Widget> listAllScreen2 = [
//     Home_Screen_0(), // index 0
//     againCalander(), // index 1
//     ProfileScreen_0(), // index 2
//   ];
//   RootViewModellAgain(val) {
//     // funtion to cha hge the screen from index one to another
//     UpdateScreen2(val);
//     notifyListeners();
//   }
//   UpdateScreen2(int index) {
//     setState(ViewState.busy);
//     // to change the screen by clicking icon oin bottom App BAr
//     selectedScreen2 = index;
//     setState(ViewState.idle);
//     notifyListeners();
//   }
// }
