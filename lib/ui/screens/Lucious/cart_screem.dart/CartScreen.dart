import 'package:figma_creation_task/ui/custom_widgets/cart_screen.dart';
import 'package:figma_creation_task/ui/custom_widgets/circularButton.dart';
import 'package:figma_creation_task/ui/screens/Lucious/cart_screem.dart/cartViewModel.dart';
import 'package:figma_creation_task/ui/screens/Lucious/home%20screen/1home_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen_0 extends StatefulWidget {
  const CartScreen_0({super.key});

  @override
  State<CartScreen_0> createState() => _CartScreen_0State();
}

class _CartScreen_0State extends State<CartScreen_0> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (context) => CartViewModel(),
      child: Consumer<CartViewModel>(
          builder: (context, model, child) => Scaffold(
                body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 51.0, left: 25),
                      child: Row(
                        children: [
                          CircularButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home_Screen_0()));
                              },
                              icon: Icons.arrow_back),
                          const SizedBox(width: 20),
                          const Text("Cart"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: screenheight * 0.6,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: model.listCart.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: CartSCreenCustomSCOntainer(
                                    object_CartMoel: model.listCart[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
