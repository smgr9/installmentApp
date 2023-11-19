import 'package:first_temp/core/app/app_color.dart';
import 'package:first_temp/core/app/app_style.dart';
import 'package:first_temp/features/home/presentation/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ItemAction extends StatelessWidget {
  const ItemAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: AppColor.popularbuttoneColor,
          child: Text(
            "View Item",
            style: AppStyle.bookTextStyle.copyWith(
              color: primaryColor(context),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          child: CustomIconButton(
            onPressed: () {},
            color2: AppColor.popularCateColor.withOpacity(0.2),
            iconData: Icons.add_shopping_cart_outlined,
            color: AppColor.popularCateColor,
          ),
        )
      ],
    );
  }
}
