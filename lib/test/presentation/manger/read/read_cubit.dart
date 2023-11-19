import 'package:equatable/equatable.dart';
import 'package:first_temp/constent.dart';
import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'read_state.dart';

class ReadCubit extends Cubit<ReadState> {
  static ReadCubit get(context) => BlocProvider.of(context);
  ReadCubit() : super(ReadInitial());

  final Box _box = Hive.box(HiveConstants.wordBox);
  LanguageFilter languageFilter = LanguageFilter.allWords;
  SortedBy sortedBy = SortedBy.time;
  SortingType sortingType = SortingType.descending;
// fun
  void updateLanguageFilter(LanguageFilter languageFilter) {
    this.languageFilter = languageFilter;
    getWords();
    // emit(ReadInitial());
  }

  void updatedSortedByFilter(SortedBy sortBy) {
    sortedBy = sortBy;
    getWords();
  }

  void updatedSortingTyperFilter(SortingType sortingType) {
    this.sortingType = sortingType;
    getWords();
  }

//get
  void getWords() {
    emit(ReadLoading());
    try {
      List<WordModel> wordToReturn = List.from(
        _box.get(HiveConstants.wordList, defaultValue: []),
      ).cast<WordModel>();

      _removeUnWantedWords(wordToReturn);
      _applySorting(wordToReturn);
      // for (var i = 0; i < wordToReturn.length; i++) {
      //   print("===========");
      //   print(wordToReturn[i].text);

      //   print(wordToReturn[i].isArabic);

      //   print(wordToReturn[i].indexAtDatabase);

      //   print(wordToReturn[i].colorCode);
      //   print("===========");
      // }
      emit(ReadSuccess(words: wordToReturn));
    } catch (e) {
      emit(ReadFailure(message: "we have Erorr: $e"));
    }
  }

// get 2
  void _removeUnWantedWords(List<WordModel> wordToReturn) {
    if (languageFilter == LanguageFilter.allWords) {
      return;
    }
    for (var i = 0; i < wordToReturn.length; i++) {
      if ((languageFilter == LanguageFilter.arabicOnly &&
              wordToReturn[i].isArabic == false) ||
          (languageFilter == LanguageFilter.englishOnly &&
              wordToReturn[i].isArabic == true)) {
        wordToReturn.removeAt(i);
        i--;
      }
    }
  }

  void _applySorting(List<WordModel> wordToReturn) {
    if (sortedBy == SortedBy.time) {
      if (sortingType == SortingType.ascending) {
      } else {
        return;
      }
    } else {
      wordToReturn.sort(
          (WordModel a, WordModel b) => a.text.length.compareTo(b.text.length));
      if (sortingType == SortingType.ascending) {
        return;
      } else {
        _reverse(wordToReturn);
      }
    }
  }

  void _reverse(List<WordModel> wordToReturn) {
    for (var i = 0; i < wordToReturn.length / 2; i++) {
      WordModel temp = wordToReturn[i];
      wordToReturn[i] = wordToReturn[wordToReturn.length - 1 - i];
      wordToReturn[wordToReturn.length - 1 - i] = temp;
    }
  }
}

enum LanguageFilter {
  arabicOnly,
  englishOnly,
  allWords,
}

enum SortedBy {
  time,
  wordLenght,
}

enum SortingType {
  ascending,
  descending,
}
