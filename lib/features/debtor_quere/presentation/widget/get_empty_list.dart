import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class GetEmptyList extends StatelessWidget {
  const GetEmptyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.list, size: 30),
          Text(
            "Word List is empty",
            style: TextStyle(
              color: ColorManger.white,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}
