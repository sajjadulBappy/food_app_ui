import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/HomeScreen/widgets/header.dart';
import 'package:food_app_ui/screens/HomeScreen/widgets/search.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              const SizedBox(height: 20,),
              const Search(),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/explore.png'), // Path to your image
                    fit: BoxFit.cover, // Adjusts the size of the background image
                  ),
                  borderRadius: BorderRadius.circular(15), // Optional: Rounds the corners
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
