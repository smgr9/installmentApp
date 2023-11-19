import 'package:first_temp/constent.dart';

import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'write_state.dart';

class WriteCubit extends Cubit<WriteState> {
  WriteCubit() : super(WriteInitial());
  static WriteCubit get(context) => BlocProvider.of(context);
  //atterbit
  final Box box = Hive.box(HiveConstants.wordBox);
  String text = "";
  bool isArabic = true;
  int colorCode = 0xFF4A47A3;
// updata
  void updataText(String text) {
    this.text = text;
    // emit(WriteInitial());
  }

  void updataIsArabic(bool isArabic) {
    this.isArabic = isArabic;
    emit(WriteInitial());
  }

  void updataColorCode(int colorCode) {
    this.colorCode = colorCode;
    emit(WriteInitial());
  }

//Word
  void addWord() {
    tryAndCatchBloc(() {
      // throw Exception();
      List<WordModel> words = _getWordsFromDataBase();
      words.add(
        WordModel(
          indexAtDatabase: words.length,
          text: text,
          isArabic: isArabic,
          colorCode: colorCode,
        ),
      );
      box.put(HiveConstants.wordList, words);
    }, "erorr in Add:");
  }

  void deleteWord(int indexAtDatabase) {
    tryAndCatchBloc(() {
      List<WordModel> words = _getWordsFromDataBase();
      words.removeAt(indexAtDatabase);
      for (var i = indexAtDatabase; i < words.length; i++) {
        words[i] = words[i].decrementIndexAtDataBase();
      }
      box.put(HiveConstants.wordList, words);
    }, "eror in delete word is:");
  }

  // Similar Word
  void addSimilarWord(int indexAtDatabase) {
    tryAndCatchBloc(
      () {
        List<WordModel> words = _getWordsFromDataBase();
        words[indexAtDatabase] =
            words[indexAtDatabase].addSimilarWord(text, isArabic);
        box.put(HiveConstants.wordList, words);
      },
      "erorr in add similar word is:",
    );
  }

  void deleteSimilarWord(
      int indexAtDatabase, int indexInSimilarWord, bool isArabic) {
    tryAndCatchBloc(
      () {
        List<WordModel> words = _getWordsFromDataBase();
        words[indexAtDatabase] =
            words[indexAtDatabase].deleteSimilarWord(indexAtDatabase, isArabic);
        box.put(HiveConstants.wordList, words);
      },
      "erorr in delete similar word is:",
    );
  }

  //example
  void addExample(int indexAtDatabase) {
    tryAndCatchBloc(
      () {
        List<WordModel> words = _getWordsFromDataBase();
        words[indexAtDatabase] =
            words[indexAtDatabase].addExample(text, isArabic);
        box.put(HiveConstants.wordList, words);
      },
      "erorr in add Example similar word is:",
    );
  }

  void deleteExample(
      int indexAtDatabase, int indexInSimilarWord, bool isArabic) {
    tryAndCatchBloc(
      () {
        List<WordModel> words = _getWordsFromDataBase();
        words[indexAtDatabase] =
            words[indexAtDatabase].deleteExample(indexAtDatabase, isArabic);
        box.put(HiveConstants.wordList, words);
      },
      "erorr in delete example word is:",
    );
  }

// ListBox
  List<WordModel> _getWordsFromDataBase() =>
      List.from(box.get(HiveConstants.wordList, defaultValue: []))
          .cast<WordModel>();
// draft
  void tryAndCatchBloc(VoidCallback methodToExcute, String messege) {
    emit(WriteLoading());
    try {
      methodToExcute.call();
      emit(WriteSuccess());
    } catch (e) {
      emit(WriteFailur(message: "$messege : $e"));
    }
  }
}
