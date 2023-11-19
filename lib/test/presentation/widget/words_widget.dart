import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';

import 'package:first_temp/test/presentation/widget/word_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WordsWidget extends StatelessWidget {
  const WordsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadCubit, ReadState>(
      builder: (context, state) {
        if (state is ReadSuccess) {
          if (state.words.isEmpty) {
            return _getEmptyWords();
          }
          return _getWords(word: state.words);
        } else if (state is ReadFailure) {
          return _getFailued(state.message);
        } else {
          return _getLoading();
        }
      },
    );
  }
}

Widget _getEmptyWords() {
  return const Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.list,
          size: 30,
        ),
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

Widget _getWords({required List<WordModel> word}) {
  return GridView.builder(
    physics: const BouncingScrollPhysics(),
    itemCount: word.length,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: 2 / 1.5,
    ),
    itemBuilder: (context, index) {
      return WordItemWidget(
        wordModel: word[index],
      );
    },
  );
}

Widget _getFailued(String message) {
  return Text(message);
}

Widget _getLoading() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}
