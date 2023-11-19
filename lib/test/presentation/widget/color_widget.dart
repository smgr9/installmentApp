import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({Key? key, required this.activeColorCode})
      : super(key: key);
  final int activeColorCode;
  final List<int> colorCodes = const [
    0xff4A47A3,
    0xff0c7B93,
    0xffBC6FF1,
    0xfff4ABC4,
    0xffC70039,
    0xff8FBC8F,
    0xffFA8072,
    0xff4D4C7D,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 7),
        itemCount: colorCodes.length,
        itemBuilder: (context, index) => getItemDesign(index, context),
      ),
    );
  }

  Widget getItemDesign(int index, BuildContext context) {
    return InkWell(
      onTap: () => BlocProvider.of<WriteCubit>(context)
          .updataColorCode(colorCodes[index]),
      child: Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            border: activeColorCode == colorCodes[index]
                ? Border.all(color: ColorManger.white, width: 2)
                : null,
            shape: BoxShape.circle,
            color: Color(
              colorCodes[index],
            ),
          ),
          child: activeColorCode == colorCodes[index]
              ? const Center(
                  child: Icon(
                    Icons.done,
                    color: ColorManger.white,
                  ),
                )
              : null),
    );
  }
}
