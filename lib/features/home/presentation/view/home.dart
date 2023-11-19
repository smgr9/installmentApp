import 'package:first_temp/features/component/drawer/drawer_body.dart';
import 'package:first_temp/features/component/drawer/data/locale_drawer_data_source.dart';
import 'package:first_temp/features/home/presentation/widget/home_view_body.dart';
import 'package:first_temp/features/settings/presentation/view/settings_view.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String id = "/home";
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerBody(drawerItems: drawerItems(context)),
      appBar: AppBar(
        title: Text(S.of(context).home_page),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SettingsView.id);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
