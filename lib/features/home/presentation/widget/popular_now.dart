import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_image.dart';

import 'package:first_temp/features/home/presentation/widget/item_action.dart';
import 'package:first_temp/features/home/presentation/widget/rate_and_cate.dart';
import 'package:first_temp/features/home/presentation/widget/title_body.dart';
import 'package:first_temp/features/home/presentation/widget/title_text.dart';
import 'package:flutter/material.dart';

class PopularNow extends StatelessWidget {
  const PopularNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleText(
          text: "Popular now",
        ),
        // const SizedBox(height: sizedboxH25),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              decoration: BoxDecoration(
                color: primaryAppColor(context),
                borderRadius: const BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              child: const PopularBody(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppImages.popular,
                // width: 100,
                height: 190,
              ),
            )
          ],
        )
      ],
    );
  }
}

class PopularBody extends StatelessWidget {
  const PopularBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.symmetric(horizontal: sizedboxH20, vertical: sizedboxH20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleBody(text: "Adjustable Office\nChair"),
              SizedBox(height: sizedboxH10),
              RateAndCate(),
              SizedBox(height: sizedboxH10),
              ItemAction(),
            ],
          ),
        ],
      ),
    );
  }
}
