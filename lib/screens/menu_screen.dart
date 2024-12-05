import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food/core/theme/app_colors.dart';
import 'package:food/widgets/custom_button.dart';
import 'package:food/widgets/menu_category_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // elevation: 1,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black.withOpacity(0.2),
          ),
        ),

        backgroundColor: AppColors.white,
        title: const Text("South Indian Breakfast"),
      ),
      body: Container(
        height: double.infinity,
        color: AppColors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
              ),
              child: const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MenuCategoryCard(
                          image: "assets/images/starter.png",
                          title: "Started",
                          max: 2,
                          selected: 1),
                      MenuCategoryCard(
                          image: "assets/images/mains.png",
                          title: "Mains",
                          max: 2,
                          selected: 1),
                      MenuCategoryCard(
                        image: "assets/images/sweets.png",
                        title: "Sweets",
                        max: 2,
                        selected: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: double.infinity,
                color: AppColors.background,
                padding: const EdgeInsets.all(8.0),
                child: MasonryGridView.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              child: Image.asset(
                                "assets/images/idli.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Idli Sambar",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                CustomButton(
                                  backgroundColor: AppColors.pink,
                                  hasFullWidth: true,
                                  isOutlinedButton: true,
                                  onTap: () {},
                                  text: "Add",
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Price per plate",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                Text.rich(
                  TextSpan(text: "₹240", children: [
                    TextSpan(
                        text: "/Plate",
                        style: TextStyle(
                          fontSize: 16,
                        ))
                  ]),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),
              ],
            ),
            CustomButton(
              fontSize: 20,
              onTap: () {},
              text: "Fill Details",
            ),
          ],
        ),
      ),
    );
  }
}
