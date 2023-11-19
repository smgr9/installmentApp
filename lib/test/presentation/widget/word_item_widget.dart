import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:first_temp/test/presentation/view/screens/word_details_screen.dart';
import 'package:flutter/material.dart';

class WordItemWidget extends StatelessWidget {
  final WordModel wordModel;
  const WordItemWidget({
    super.key,
    required this.wordModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return WordDetailsScreen(
                wordModel: wordModel,
              );
            },
          ),
        ).then((value) {
          ReadCubit.get(context).getWords();
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color(wordModel.colorCode),
            borderRadius: BorderRadius.circular(23)),
        child: Center(
          child: Text(
            wordModel.text,
            style: const TextStyle(
              color: ColorManger.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
