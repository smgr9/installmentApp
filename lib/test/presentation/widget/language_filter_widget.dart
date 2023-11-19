import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageFilterWidget extends StatelessWidget {
  const LanguageFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadCubit, ReadState>(
      builder: (context, state) {
        return Text(
          _mapLanguageFilterEnuToString(ReadCubit.get(context).languageFilter),
          style: const TextStyle(
            color: ColorManger.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }

  String _mapLanguageFilterEnuToString(LanguageFilter languageFilter) {
    if (languageFilter == LanguageFilter.allWords) {
      return "All Words";
    } else if (languageFilter == LanguageFilter.englishOnly) {
      return "English Only";
    } else {
      return "Arabic Only";
    }
  }
}
