import 'package:first_temp/features/settings/presentation/manger/theme/theme_bloc.dart';
import 'package:first_temp/features/settings/presentation/widget/setting_row_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/app_theme.dart';
import '../../../../generated/l10n.dart';

class ThemeSliver extends StatelessWidget {
  const ThemeSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 1,
        (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  RowSettingData(
                    text: S.of(context).select_theme,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(8),
                    itemCount: AppTheme.values.length,
                    itemBuilder: (context, index) {
                      final itemAppTheme = AppTheme.values[index];
                      return Card(
                        color: appThemeData[itemAppTheme]!.primaryColor,
                        child: ListTile(
                          title: Text(
                            itemAppTheme.name,
                            style: appThemeData[itemAppTheme]!
                                .textTheme
                                .titleMedium,
                          ),
                          onTap: () {
                            context
                                .read<ThemeBloc>()
                                .add(ThemeChangedEvent(theme: itemAppTheme));
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
