import 'package:flutter/material.dart';
import 'package:food_delivery_app/config/app_color.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/icon_text_widget.dart';
import 'package:food_delivery_app/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 200,
          margin: const EdgeInsets.only(right: 10, left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColor.lightOrange,
            image: const DecorationImage(
              image: AssetImage("assets/images/food3.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 110,
            margin: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Mie Ayam Mozarela'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: AppColor.primary,
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SmallText(text: '5.0'),
                      const SizedBox(width: 10),
                      SmallText(text: '|'),
                      const SizedBox(width: 10),
                      SmallText(text: '126'),
                      const SizedBox(width: 10),
                      SmallText(text: 'sold')
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconTextWidget(
                        icon: Icons.fastfood,
                        text: 'Normal',
                        iconColor: AppColor.primary,
                      ),
                      IconTextWidget(
                        icon: Icons.location_pin,
                        text: '1.5 km',
                        iconColor: Colors.lightBlue,
                      ),
                      IconTextWidget(
                        icon: Icons.access_time,
                        text: 'Normal',
                        iconColor: Colors.green,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
