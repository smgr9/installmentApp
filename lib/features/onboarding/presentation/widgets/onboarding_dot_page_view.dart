import 'package:flutter/material.dart';

class OnboardingDotPageViewItem extends StatelessWidget {
  const OnboardingDotPageViewItem(
      {Key? key, required this.indexOrder, required this.index})
      : super(key: key);
  final int indexOrder;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 32),
      child: Container(
        width: index != indexOrder ? 9 : 25,
        height: 5,
        decoration: BoxDecoration(
            color: index != indexOrder
                ? const Color(0xffEAEAFF)
                : const Color(0xff3D5CFF),
            borderRadius: const BorderRadius.all(Radius.circular(50))),
      ),
    );
  }
}
