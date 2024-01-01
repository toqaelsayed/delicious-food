import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  List iconImages = [
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon1.png",
    "assets/icon2.png",
    "assets/icon3.png",
    "assets/icon4.png",
    "assets/icon1.png",
    "assets/icon2.png",

  ];
  List Titles = [
    "VeggiE Taco Mask",
    "Mix Veg Salad",
    "Chickpea Salad",
    "Chilli Salad"
  ];
  List TitleImages = [
    "veggie _taco_hash",
    "mix_veg_salad",
    "chickpea_salad",
    "chilli_salad"
  ];
  final ItemTitle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 17);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort,
                    size: 40,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              const Text(
                "Delicous Food",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Discover and Get Great Food",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: iconImages.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                spreadRadius: 2,
                                color: Colors.black87,
                              ),
                            ]),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Image.asset(iconImages[index]),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 280,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: TitleImages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                height: 250,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(Titles[index]),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Text(
                                        "Fresh and Healthy Veg Salad",
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("\$25.00"),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.black12,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Icon(
                                              Icons.favorite_border,
                                              size: 20,
                                              color: Colors.black54,

                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                left: 35,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(80),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          spreadRadius: 2,
                                          color: Colors.black12,
                                        )
                                      ]),
                                  child: Image.asset(
                                    "assets/${TitleImages[index]}.png",
                                    height: 140,
                                    width: 140,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 40,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: 300,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 30, top: 10, bottom: 10, right: 20),
                              child: Container(
                                height: 120,
                                width: MediaQuery.of(context).size.width/1.2,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    )
                                  ],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      (40),
                                    ),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Mediqtran\nFruit Salad",
                                        style: ItemTitle,
                                      ),
                                     const Text(
                                        "Special Ready Salad",
                                        style: TextStyle(
                                            color: Colors.black45, fontSize: 15),
                                      ),
                                      const Text(
                                        "\$25.00",
                                        style: TextStyle(
                                            color: Colors.black45,
                                            fontWeight: FontWeight.w800,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Image.asset("assets/fruit_salad.png"),
                              height: 160,
                              width: 160,
                            )
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(15),
        ),
        child: GNav(
          activeColor: Colors.white,
          gap: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          padding: EdgeInsets.all(10),
          style: GnavStyle.google,
          haptic: true,
          color: Colors.white70,
          tabBackgroundColor: Colors.black38,
          tabBorderRadius: 20,
          tabs: [
            GButton(
              icon: CupertinoIcons.home,
              text: "Home",
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "Wishlist",
            ),
            GButton(
              icon: Icons.chat_bubble_outline_rounded,
              text: "Chat",
            ),
            GButton(
              icon: Icons.person_outline_outlined,
              text: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
