import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:first_temp/test/presentation/widget/filter_dilog.dart';
import 'package:flutter/material.dart';

class FilterDilogButton extends StatelessWidget {
  const FilterDilogButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManger.white,
      ),
      child: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return const FilterDilog();
            },
          );
        },
        icon: const Icon(
          Icons.filter_list,
          color: ColorManger.black,
        ),
      ),
    );
  }
}
