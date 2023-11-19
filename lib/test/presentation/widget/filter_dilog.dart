import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';

import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterDilog extends StatelessWidget {
  const FilterDilog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadCubit, ReadState>(
      builder: (context, state) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FilterList(text: "Language"),
                const SizedBox(height: 10),
                languageFeild(context),
                const SizedBox(height: 15),
                const FilterList(text: "Sorted By"),
                const SizedBox(height: 10),
                _getSortBy(context),
                const SizedBox(height: 15),
                const FilterList(text: "Sorting Type"),
                const SizedBox(height: 10),
                _getSortType(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget languageFeild(BuildContext context) {
    return _filterFeild(lables: [
      "arabic",
      "english",
      "all"
    ], ontaps: [
      () => ReadCubit.get(context)
          .updateLanguageFilter(LanguageFilter.arabicOnly),
      () => ReadCubit.get(context)
          .updateLanguageFilter(LanguageFilter.englishOnly),
      () =>
          ReadCubit.get(context).updateLanguageFilter(LanguageFilter.allWords),
    ], conditionsOfActivation: [
      ReadCubit.get(context).languageFilter == LanguageFilter.arabicOnly,
      ReadCubit.get(context).languageFilter == LanguageFilter.englishOnly,
      ReadCubit.get(context).languageFilter == LanguageFilter.allWords,
    ]);
  }
}

Widget _getSortBy(BuildContext context) {
  return _filterFeild(lables: [
    "Time",
    "Word lenght",
  ], ontaps: [
    () => ReadCubit.get(context).updatedSortedByFilter(SortedBy.time),
    () => ReadCubit.get(context).updatedSortedByFilter(SortedBy.wordLenght),
  ], conditionsOfActivation: [
    ReadCubit.get(context).sortedBy == SortedBy.time,
    ReadCubit.get(context).sortedBy == SortedBy.wordLenght,
  ]);
}

Widget _getSortType(BuildContext context) {
  return _filterFeild(lables: [
    "Ascending",
    "Descending",
  ], ontaps: [
    () =>
        ReadCubit.get(context).updatedSortingTyperFilter(SortingType.ascending),
    () => ReadCubit.get(context)
        .updatedSortingTyperFilter(SortingType.descending),
  ], conditionsOfActivation: [
    ReadCubit.get(context).sortingType == SortingType.ascending,
    ReadCubit.get(context).sortingType == SortingType.descending,
  ]);
}

// ignore: unused_element
Widget _filterFeild({
  required List<String> lables,
  required List<VoidCallback> ontaps,
  required List<bool> conditionsOfActivation,
}) {
  return Row(
    children: [
      for (int i = 0; i < lables.length; i++)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: ontaps[i],
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: conditionsOfActivation[i] ? ColorManger.white : null,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: ColorManger.white,
                ),
              ),
              child: Center(
                child: Text(
                  lables[i],
                  style: TextStyle(
                    color: conditionsOfActivation[i] ? null : ColorManger.white,
                  ),
                ),
              ),
            ),
          ),
        ),
    ],
  );
}

class FilterList extends StatelessWidget {
  final String text;
  const FilterList({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: ColorManger.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
