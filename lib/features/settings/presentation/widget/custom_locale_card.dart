import 'package:first_temp/features/settings/presentation/widget/setting_locale.dart';
import 'package:first_temp/features/settings/presentation/widget/setting_row_data.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomLocaleCard extends StatelessWidget {
  const CustomLocaleCard({
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
                text: S.of(context).select_Language,
              ),
              const CustomLocaleDropDown(),
              const SizedBox(height: 16),
              // CustomThemeSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
