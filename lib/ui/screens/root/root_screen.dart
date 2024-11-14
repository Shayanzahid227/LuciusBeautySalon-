import 'package:figma_creation_task/ui/custom_widgets/bottom_navigator_bar/bottom_navigator_bar.dart';
import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';

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
          bottomNavigationBar: bottomBar(model),

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
