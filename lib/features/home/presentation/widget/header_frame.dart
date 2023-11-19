import 'package:first_temp/core/app/app_image.dart';
import 'package:first_temp/features/home/presentation/widget/custom_icon_button.dart';
import 'package:first_temp/features/settings/presentation/view/settings_view.dart';
import 'package:flutter/material.dart';

class HeaderFrame extends StatelessWidget {
  const HeaderFrame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(SettingsView.id);
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage(AppImages.ws1),
              maxRadius: 25,
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              onPressed: () {},
              iconData: Icons.search,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomIconButton(
              onPressed: () {},
              iconData: Icons.shopping_cart,
            ),
          ],
        )
      ],
    );
  }
}
