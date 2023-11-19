import 'package:first_temp/features/settings/presentation/widget/setting_row_data.dart';
import 'package:first_temp/features/settings/presentation/widget/theme_setting.dart';
import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

class CustomThemeCard extends StatelessWidget {
  const CustomThemeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: avoid_unnecessary_containers
      child: Container(
        // color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              RowSettingData(
                text: S.of(context).select_theme,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ThemeManger(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
