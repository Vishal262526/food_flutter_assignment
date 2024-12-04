import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:food/core/theme/app_colors.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            // margin: EdgeInsets.only(bottom: 8.0),
            height: 220,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
              child: Image.asset(
                "assets/images/food.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Indian Soiree",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(),
                Container(
                  height: 85,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 10,
                          direction: Axis.vertical,
                          children: [
                            Image.asset("assets/images/items.png"),
                            Text(
                              "1 Starter",
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text.rich(
                            TextSpan(
                              text: "₹299",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                              children: [
                                TextSpan(
                                    text: "/guest",
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                    ))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              const Text(
                                'Add guest count to see',
                                style: TextStyle(
                                  fontSize: 8,
                                ),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Image.asset(
                                "assets/images/star.png",
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              const Text(
                                'Dynamic Pricing',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.primary,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text("Customize"),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
