import 'package:figma_creation_task/main.dart';
import 'package:figma_creation_task/ui/custom_widgets/cart_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/cart_screem.dart/cartViewModel.dart';
import 'package:figma_creation_task/ui/screens/Lucious/details/details.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/Home_MVVM.dart';
import 'package:figma_creation_task/ui/screens/root/root_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CartScreen_0 extends StatefulWidget {
  const CartScreen_0({super.key});

  @override
  State<CartScreen_0> createState() => _CartScreen_0State();
}

class _CartScreen_0State extends State<CartScreen_0> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: ChangeNotifierProvider(
        create: (context) => CartViewModel(),
        child: Consumer<CartViewModel>(
            builder: (context, model, child) => Scaffold(
                  body: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 51.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Color(0xfffeaeaea),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Home_Screen_0(),
                                          ));
                                    },
                                    icon: Icon(Icons.arrow_back)),
                              ),
                              SizedBox(width: screenwidth * 0.06),
                              Text(
                                "Cart",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xfff000000)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SafeArea(
                            child: SizedBox(
                          height: screenheight * 0.92,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {},
                                  child: CartSCreenCustomSCOntainer(
                                      object_CartMoel: model.listCart[index]),
                                );
                              }),
                        ))
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
