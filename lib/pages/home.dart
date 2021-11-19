import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'furniture.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<Main> {
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
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  //--! Title App !--\
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20, right: 20, top: 30, bottom: 30),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'Center',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
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
                    reverse: true,
                    child: Column(
                      children: [
                        itemsMenuList(),
                        itemsMenuList(),
                        itemsMenuList(),
                        itemsMenuList(),
                        itemsMenuList(),
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

itemsMenuList() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.only(right: 15.0, left: 15.0, top: 5.0),
    child: InkWell(
      borderRadius: BorderRadius.circular(10.0),
      child: ListTile(
        leading: const Icon(Icons.access_alarm),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        tileColor: const Color(0xffe1e6ef),
        title: const Text("sas"),
        subtitle: const Text("SA"),
        dense: true,
      ),
      onTap: () {
        // ignore: avoid_print
        print("tayo");
      },
    ),
  );
}
