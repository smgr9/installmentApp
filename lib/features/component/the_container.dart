import 'package:first_temp/constent.dart';
import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/material.dart';

class TheContainer extends StatelessWidget {
  final List<Widget> children;
  const TheContainer({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        // width: double.infinity,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
            color: containerColor(context),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(tContainerRad),
              topRight: Radius.circular(tContainerRad),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: tContainerpadingH, vertical: tContainerpadingv),
          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}

class TheContainerScroll extends StatelessWidget {
  final List<Widget> children;

  const TheContainerScroll({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: containerColor(context),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(tContainerRad),
            topRight: Radius.circular(tContainerRad),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: tContainerpadingH,
            vertical: tContainerpadingv,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
