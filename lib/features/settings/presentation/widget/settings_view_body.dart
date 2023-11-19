import 'package:first_temp/features/settings/presentation/widget/custom_locale_card.dart';
import 'package:first_temp/features/settings/presentation/widget/theme_sliver.dart';
import 'package:flutter/material.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomLocaleCard(),
            ),
            ThemeSliver(),
          ],
        ),
      ),
    );
  }
}

class SliverGraidBox extends StatelessWidget {
  const SliverGraidBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(8),
          color: _randomColor(index),
          child: Center(
            child: Text(
              "$index",
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        );
      }, childCount: 12),
    );
  }
}

Color _randomColor(int index) {
  if (index % 5 == 0) {
    return Colors.blue;
  } else if (index % 5 == 1) {
    return Colors.orange;
  } else if (index % 5 == 2) {
    return Colors.cyan;
  } else if (index % 5 == 3) {
    return const Color.fromARGB(255, 91, 129, 134);
  }
  return Colors.red;
}
