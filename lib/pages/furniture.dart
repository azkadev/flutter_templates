import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';

class Furniture extends StatelessWidget {
  const Furniture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(left: 15),
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                  8), //                 <--- border radius here
                            ),
                          ),
                          child:
                              const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Main()));
                        },
                      ),
                      //--! Account Profile Image !--\\

                      //--! Title App !--\
                      Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, top: 30, bottom: 30),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          'Furniture',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 100),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                                8), //                 <--- border radius here
                          ),
                        ),
                        child: const Icon(Icons.store_mall_directory,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  //--! End Title App !--\\
                  //--! Border Account !--\\
                  Container(
                    height: 175,
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 10, bottom: 10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xff3977ff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                            20), //                 <--- border radius here
                      ),
                    ),
                    child: Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //--! Account Profile Image !--\\
                                Container(
                                  height: 50,
                                  width: 50,
                                  margin:
                                      const EdgeInsets.only(left: 15, top: 20),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30), //                 <--- border radius here
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    child: Image.asset(
                                      'assets/images/profile.jpeg',
                                      width: 110.0,
                                      height: 110.0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                //--! Account name title !--\\
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 10, top: 25),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'AZKA DEVELOPER',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Full Snack Developer',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.6),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                items("847", "Collect"),
                                items("51", "Attention"),
                                items("267", "Track"),
                                items("39", "Coupons"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //--! End Border !--\\
                  //--! Horizontal Menu scrollable !--\\
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        itemsMenu(const Icon(Icons.attach_money), "Wallet"),
                        itemsMenu(const Icon(Icons.wallet_travel_rounded),
                            "Delivery"),
                        itemsMenu(
                            const Icon(Icons.wallet_travel_rounded), "Message"),
                        itemsMenu(
                            const Icon(Icons.wallet_travel_rounded), "Service"),
                      ],
                    ),
                  ),
                  //--1 End Horizontal menu Scrollablle !--\\
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            // ignore: avoid_print
                            print("azkas");
                          },
                          child: itemsMenu(
                              const Icon(Icons.wallet_travel_rounded),
                              "Wallet"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//--! Function for make count and title !--\\
items([count, title]) {
  return Container(
    margin: const EdgeInsets.only(left: 30, top: 35),
    child: Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}

itemsMenu([icon, title]) {
  return Column(
    children: [
      Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(left: 15, top: 20, right: 15),
        decoration: const BoxDecoration(
          color: Color(0xffe1e6ef),
          borderRadius: BorderRadius.all(
            Radius.circular(30), //                 <--- border radius here
          ),
        ),
        child: icon,
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 12,
          ),
        ),
      ),
    ],
  );
}

itemsMenuList() {}
