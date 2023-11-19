import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_style.dart';
import 'package:first_temp/features/home/presentation/widget/title_text.dart';
import 'package:flutter/material.dart';

class CateHeader extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CateHeader({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(text: text),
          Row(
            children: [
              Text(
                "See More",
                style: AppStyle.romanTextStyle.copyWith(
                  color: AppColor.seeMoreColor,
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
                color: AppColor.seeMoreColor,
              )
            ],
          ),
        ],
      ),
    );
  }
}
