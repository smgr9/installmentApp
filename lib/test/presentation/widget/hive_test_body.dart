import 'package:first_temp/test/presentation/widget/head_body.dart';
import 'package:first_temp/test/presentation/widget/words_widget.dart';
import 'package:flutter/material.dart';

class HiveTestBody extends StatelessWidget {
  const HiveTestBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          LanguageFilterWidgetBox(),
          SizedBox(height: 25),
          Expanded(child: WordsWidget()),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
