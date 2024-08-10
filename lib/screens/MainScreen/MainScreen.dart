import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../contend.dart';
import '../HomeScreen/HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List screens = const [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomAppBar(
          color: Colors.grey.shade300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: ()=>{
                  setState(() {
                    currentTab = 0;
                  })
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                      color: currentTab == 0 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 0 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 1;
                }),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                      color: currentTab == 1 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 1 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 2;
                }),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      currentTab == 2 ? Iconsax.calendar_25 : Iconsax.calendar_2,
                      color: currentTab == 2 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Meal Plan",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 2 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  currentTab = 3;
                }),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      // currentTab == 3 ? Iconsax.setting5 : Iconsax.setting5,
                      // color: currentTab == 3 ? kprimaryColor : Colors.grey,
                      currentTab == 3 ? Iconsax.setting4 : Iconsax.setting4,
                      color: currentTab == 3 ? kprimaryColor : Colors.grey,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 14,
                        color: currentTab == 3 ? kprimaryColor : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}

