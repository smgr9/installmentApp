import 'package:first_temp/test/presentation/widget/filtter_dilog_button.dart';
import 'package:first_temp/test/presentation/widget/language_filter_widget.dart';
import 'package:flutter/material.dart';

class LanguageFilterWidgetBox extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;

  const LanguageFilterWidgetBox({
    Key? key,
    this.onPressed,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        LanguageFilterWidget(),
        FilterDilogButton(),
      ],
    );
  }
}
