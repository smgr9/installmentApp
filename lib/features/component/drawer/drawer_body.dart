import 'package:first_temp/core/app/app_image.dart';
import 'package:first_temp/features/component/drawer/home_page_drawerr.dart';
import 'package:first_temp/features/component/drawer/top_auth_ui_logo.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key? key, required this.drawerItems}) : super(key: key);
  final List drawerItems;

  @override
  Widget build(BuildContext context) {
    List items = drawerItems;
    return Drawer(
      child: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TopAuthUiLogo(
                  text: S.of(context).drawer_home, image: AppImages.logo),
            ),
            ...List.generate(
              items.length,
              (index) => HomePageDrower(
                items: items,
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
