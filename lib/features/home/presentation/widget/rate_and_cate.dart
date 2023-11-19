import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_style.dart';
import 'package:flutter/material.dart';

class RateAndCate extends StatelessWidget {
  const RateAndCate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Hughlan Workspaces  .",
          style: AppStyle.romanTextStyle.copyWith(
            color: AppColor.popularCateColor,
            fontSize: 10,
          ),
        ),
        const SizedBox(width: sizedboxH5),
        Row(
          children: [
            Text(
              "4.8",
              style: AppStyle.romanTextStyle.copyWith(
                color: antiPrimaryColor(context),
                fontSize: 10,
              ),
            ),
            const SizedBox(width: sizedboxH5),
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 10,
            ),
          ],
        )
      ],
    );
  }
}
