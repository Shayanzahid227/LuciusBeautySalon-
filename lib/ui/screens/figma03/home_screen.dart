import 'package:figma_creation_task/core/constant/string.dart';
import 'package:flutter/material.dart';

class home_screen_0 extends StatefulWidget {
  const home_screen_0({super.key});

  @override
  State<home_screen_0> createState() => _home_screen_0State();
}

class _home_screen_0State extends State<home_screen_0> {
  bool isSelect = false;

  @override
  void initState() {
    super.initState();
  }

  onClick() {
    isSelect = !isSelect;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff9f8f6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good morning",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "Rayna Carder ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Exclusive Offers",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 20.0, top: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color(0xfffd7b99f),
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Upto 50%,',
                          style: TextStyle(
                              color: Color(0xfffe78477),
                              fontSize: 20,
                              fontWeight: FontWeight.w300),
                        ),
                        const Text(
                          "Look more beautiful and \n save more discount",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Container(
                              height: 40,
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xfffe78477),
                              ),
                              child: const Center(
                                child: Text(
                                  "Get offer now!",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ))
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        "$staticAssets/offers.png",
                        scale: 4,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      onClick();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: isSelect ? Colors.red : Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text("Yes"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onClick();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: isSelect ? Colors.green : Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text("No"),
                    ),
                  ),
                ],
              ),
              const Text(
                "Our services",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ourservicessContainer(
                      title: "Nails",
                      imagePath: "$staticAssets/nails1.png",
                    ),
                    ourservicessContainer(
                      title: "Hair",
                      imagePath: "$staticAssets/hairs2.png",
                    ),
                    ourservicessContainer(
                      title: "Facial",
                      imagePath: "$staticAssets/facial3.png",
                    ),
                    ourservicessContainer(
                      title: "Massage",
                      imagePath: "$staticAssets/stone4.png",
                    ),
                    ourservicessContainer(
                      title: "Waxing",
                      imagePath: "$staticAssets/leg5.png",
                    ),
                    ourservicessContainer(
                      title: "Threading",
                      imagePath: "$staticAssets/flower6.png",
                    ),
                    ourservicessContainer(
                      title: "UltraLucious\n7D hifu",
                      imagePath: "$staticAssets/face7.png",
                    ),
                    ourservicessContainer(
                      title: "Lucious \nslim RF\nCavitation",
                      imagePath: "$staticAssets/dry8.png",
                    ),
                  ],
                ),
              ),
              const Text(
                "fatured Services",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 103,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    FeaturedCategoryContainer(
                      title: "Classic Pedicure",
                      imagePath: "$staticAssets/featured.png",
                      belowtitle: "45 mnt 59AED",
                    ),
                    FeaturedCategoryContainer(
                        title: "Classic Pedicure",
                        imagePath: "$staticAssets/featured.png",
                        belowtitle: "45 mnt 59 AED"),
                    FeaturedCategoryContainer(
                      title: "Classic Pedicure",
                      imagePath: "$staticAssets/featured.png",
                      belowtitle: "45 mnt 59 AED",
                    ),
                    FeaturedCategoryContainer(
                      title: "Classic Pedicure",
                      imagePath: "$staticAssets/featured.png",
                      belowtitle: "45 mnt 59 AED",
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Upcoming Bookings",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    UpcomingBookingContainer(
                        title: "Classic Manicure",
                        imagePath: "$staticAssets/upcoming.png",
                        meddletitle: "Home",
                        belowtitle: "Sat 22 August 2024"),
                    UpcomingBookingContainer(
                        title: "Classic Manicure",
                        imagePath: "$staticAssets/upcoming.png",
                        meddletitle: "Home",
                        belowtitle: "Sat 22 August 2024"),
                    UpcomingBookingContainer(
                        title: "Classic Manicure",
                        imagePath: "$staticAssets/upcoming.png",
                        meddletitle: "Home",
                        belowtitle: "Sat 22 August 2024"),
                    UpcomingBookingContainer(
                        title: "Classic Manicure",
                        imagePath: "$staticAssets/upcoming.png",
                        meddletitle: "Home",
                        belowtitle: "Sat 22 August 2024"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//  CategoryContainer Widget to recall it and optimize our code
// ignore: camel_case_types
class ourservicessContainer extends StatelessWidget {
  final String title;
  final String imagePath;

  const ourservicessContainer({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 145,
      width: 115,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: const Color(0xfffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(padding: EdgeInsets.only(top: 0)),
          Image.asset(
            imagePath,
            scale: 3.8,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

// featured services category continer
//  CategoryContainer Widget to recall it and optimize our code
class FeaturedCategoryContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final String belowtitle;

  const FeaturedCategoryContainer(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.belowtitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 130,
          width: 276,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    belowtitle,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// upcoming bookings category container for reusaiblity
class UpcomingBookingContainer extends StatelessWidget {
  final String title;
  final String imagePath;
  final String meddletitle;
  final String belowtitle;

  const UpcomingBookingContainer(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.meddletitle,
      required this.belowtitle});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(8),
          height: 120,
          width: 235,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    imagePath,
                    scale: 3.5,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xfffe78377)),
                  ),
                  Text(
                    meddletitle,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfffe78477)),
                  ),
                  Text(
                    belowtitle,
                    style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff888888)),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
