import 'package:figma_creation_task/core/enums/view_state.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';
import 'package:flutter/material.dart';

class RootViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);

  ///
  /// Constructor
  ///
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }
  int selectedScreen = 0;
  // int selectIndex = 0;

  List<Widget> allScreen = [
    // HomeScreen(),
    // ShopScreen(),
    // VolunteerScreen(),
    // ChatScreen(),
  ];

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    // selectIndex = index;
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
