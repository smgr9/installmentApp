import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class WordDetailsScreen extends StatelessWidget {
  final WordModel wordModel;
  const WordDetailsScreen({Key? key, required this.wordModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(context),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Text(
          wordModel.text,
          style: const TextStyle(
            color: ColorManger.white,
          ),
        ),
      ),
    );
  }

  AppBar _getAppBar(context) {
    return AppBar(
      foregroundColor: Color(wordModel.colorCode),
      actions: [
        IconButton(
          onPressed: () => _deleteWord(context),
          icon: const Icon(
            Icons.delete,
          ),
        ),
      ],
      title: Text(
        'Word Details',
        style: TextStyle(color: Color(wordModel.colorCode)),
      ),
    );
  }

  void _deleteWord(BuildContext context) {
    WriteCubit.get(context).deleteWord(wordModel.indexAtDatabase);
    Navigator.pop(context);
  }
}
