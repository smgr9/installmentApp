import 'package:first_temp/features/settings/presentation/view/settings_view.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class FirebaseHomeView extends StatelessWidget {
  static String id = "firebase_home";
  const FirebaseHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(),
    );
  }
}
