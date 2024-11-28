import 'package:figma_creation_task/code_with_asiftaj/againCalander.dart';
import 'package:figma_creation_task/code_with_asiftaj/calander.dart';
import 'package:figma_creation_task/core/enums/view_state.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';
import 'package:figma_creation_task/ui/screens/Lucious/all_services/all_servicess.dart';
import 'package:figma_creation_task/ui/screens/Lucious/bookings/booking.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/profileScreen/ProfileScreen.dart';
import 'package:flutter/material.dart';

class RootViewModel extends BaseViewModel {
  // final PageController pageController = PageController(initialPage: 0);

  int selectedScreen = 0;

  List<Widget> allScreen = [
    Home_Screen_0(),
    againCalander(),
    ProfileScreen_0()
  ];

  ///
  /// Constructor
  ///
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }

  // int selectIndex = 0;

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
