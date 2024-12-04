import 'package:flutter/material.dart';
import 'package:food/core/theme/app_colors.dart';
import 'package:food/widgets/food_card.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(210),
          child: AppBar(
            flexibleSpace: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/header.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    height: 160,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                )
              ],
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
              ),
            ),
            backgroundColor: AppColors.pink,
            centerTitle: true,
            foregroundColor: AppColors.white,
            title: const Text(
              "Wedding",
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: AppColors.white,
              child: TabBar(
                tabs: [
                  Tab(
                    text: "ALL(8)",
                  ),
                  Tab(
                    text: "Breakfast",
                  ),
                  Tab(
                    text: "Lunch & Dinner",
                  ),
                  Tab(
                    text: "Snackss",
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const FoodCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
