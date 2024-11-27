import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/ui/custom_widgets/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:figma_creation_task/ui/custom_widgets/bottom_navigator_bar/naviagator_bar.dart';
import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  RootScreen({super.key, this.selectedScreen = 0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(selectedScreen),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,

          ///
          /// Start Body
          ///
          body: model.allScreen[model.selectedScreen],

          ///
          /// BottomBar
          ///
          bottomNavigationBar: Container(
            height: 78.h,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  offset: const Offset(0, 1),
                  blurRadius: 7.r,
                  spreadRadius: 0),
            ]),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///
                ///
                ///
                GestureDetector(
                  onTap: () {
                    model.updatedScreen(0);
                  },
                  child: Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: model.selectedScreen == 0
                            ? Color(0xffE78377)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(13.r)),
                    child: Image.asset(
                      '$staticAssets/home1.png',
                      color: model.selectedScreen == 0
                          ? Colors.white
                          : Colors.grey,
                      scale: 4,
                    ),
                  ),
                ),

                BottomNavigatorBar(
                  image: '$staticAssets/booking1.png',
                  onTap: () {
                    model.updatedScreen(1);
                  },
                  iconColor:
                      model.selectedScreen == 1 ? Colors.white : Colors.grey,
                  boxColor: model.selectedScreen == 1
                      ? Color(0xffE78377)
                      : Colors.transparent,
                ),

                BottomNavigatorBar(
                  image: '$staticAssets/person1.png',
                  onTap: () {
                    model.updatedScreen(2);
                  },
                  iconColor:
                      model.selectedScreen == 2 ? Colors.white : Colors.grey,
                  boxColor: model.selectedScreen == 2
                      ? Color(0xffE78377)
                      : Colors.transparent,
                ),
              ],
            ),
          ),

          ///
          /// Right Drawer
          ///
          // endDrawer: buildDrawer(context),
        ),
      ),
    );
  }

  Widget bottomBar(RootViewModel model) {
    return BottomAppBar(
      color: Colors.green,
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 1,
            text: 'Shop',
            image: model.selectedScreen == 0 ? "" : "AppAssets.shop",
            onPressed: () {
              model.updatedScreen(0);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 1,
            text: 'Shop',
            image: model.selectedScreen == 1 ? "" : "AppAssets.shop",
            onPressed: () {
              model.updatedScreen(1);
            },
          ),
        ],
      ),
    );
  }
}
