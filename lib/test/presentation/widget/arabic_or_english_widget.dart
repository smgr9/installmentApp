// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class ArabicOrEnglishWidget extends StatelessWidget {
  const ArabicOrEnglishWidget({
    Key? key,
    required this.colorCode,
    required this.arabicIsSelected,
  }) : super(key: key);
  final int colorCode;
  final bool arabicIsSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _getContainerDesign(context, arabicIsSelected),
        const SizedBox(width: 8),
        _getContainerDesign(context, !arabicIsSelected),
      ],
    );
  }

  InkWell _getContainerDesign(BuildContext context, bool buildIsArabic) {
    return InkWell(
      onTap: () => WriteCubit.get(context).updataIsArabic(buildIsArabic),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 750),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: buildIsArabic == arabicIsSelected
              ? ColorManger.white
              : Color(colorCode),
          shape: BoxShape.circle,
          border: buildIsArabic == arabicIsSelected
              ? null
              : Border.all(color: ColorManger.white, width: 2),
        ),
        child: Center(
            child: Text(
          buildIsArabic ? "ar" : "en",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: buildIsArabic == arabicIsSelected
                ? Color(WriteCubit.get(context).colorCode)
                : ColorManger.white,
          ),
        )),
      ),
    );
  }
}
