import 'package:first_temp/features/home/data/models/home_buttons/home_buttons_model.dart';
import 'package:flutter/material.dart';
import 'build_home_button_data.dart';

class HomeListWidget extends StatelessWidget {
  final List<HomeButtons> installment;
  const HomeListWidget({Key? key, required this.installment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Center(
        child: Column(
          children: [
            BuildListOfHomeData(
              homeButtonData: installment,
            ),
          ],
        ),
      ),
    );
  }
}
