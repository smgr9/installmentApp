class WordModel {
  final int indexAtDatabase;
  final String text;
  final bool isArabic;
  final int colorCode;
  final List<String> arabicSimilarWords;
  final List<String> englishSimilarWords;
  final List<String> arabicExamples;
  final List<String> englishExemples;

  WordModel({
    required this.indexAtDatabase,
    required this.text,
    required this.isArabic,
    required this.colorCode,
    this.arabicSimilarWords = const [],
    this.englishSimilarWords = const [],
    this.arabicExamples = const [],
    this.englishExemples = const [],
  });

  WordModel decrementIndexAtDataBase() {
    return WordModel(
      indexAtDatabase: indexAtDatabase - 1,
      text: text,
      isArabic: isArabic,
      colorCode: colorCode,
      englishExemples: arabicExamples,
      englishSimilarWords: arabicSimilarWords,
      arabicExamples: arabicExamples,
      arabicSimilarWords: arabicSimilarWords,
    );
  }

  //*** Add
// for Similar Word
  WordModel addSimilarWord(String similarWord, bool isArabicSimilarWord) {
    List<String> newSimilarWords = _inializeNewSimilarWord(isArabicSimilarWord);
    newSimilarWords.add(similarWord);
    return _getWordAfterCheckSimilarWord(newSimilarWords, isArabicSimilarWord);
  }

//*** del
// for Similar Word
  WordModel deleteSimilarWord(
      int indexAtSimilarWord, bool isArabicSimilarWord) {
    List<String> newSimilarWords = _inializeNewSimilarWord(isArabicSimilarWord);
    newSimilarWords.removeAt(indexAtSimilarWord);
    return _getWordAfterCheckSimilarWord(newSimilarWords, isArabicSimilarWord);
  }

//*** Add
// for Example
  WordModel addExample(String example, bool isArabicExample) {
    List<String> newExample = _inializeNewExample(isArabicExample);
    newExample.add(example);
    return _getWordAfterCheckExample(newExample, isArabicExample);
  }

//*** del
// for Example
  WordModel deleteExample(int indexAtExample, bool isArabicExample) {
    List<String> newExample = _inializeNewExample(isArabicExample);
    newExample.removeAt(indexAtExample);
    return _getWordAfterCheckExample(newExample, isArabicExample);
  }

// for Similar Word
  List<String> _inializeNewSimilarWord(bool isArabicSimilarWord) {
    if (isArabicSimilarWord) {
      return List.from(arabicSimilarWords);
    } else {
      return List.from(englishSimilarWords);
    }
  }

  // for Example
  List<String> _inializeNewExample(bool isArabicExample) {
    if (isArabicExample) {
      return List.from(arabicExamples);
    } else {
      return List.from(englishExemples);
    }
  }

// for Similar Word
  WordModel _getWordAfterCheckSimilarWord(
      List<String> newSimilarWords, bool isArabicSimilarWord) {
    return WordModel(
      indexAtDatabase: indexAtDatabase,
      text: text,
      isArabic: isArabic,
      colorCode: colorCode,
      arabicExamples: arabicExamples,
      englishExemples: englishExemples,
      arabicSimilarWords:
          isArabicSimilarWord ? newSimilarWords : arabicSimilarWords,
      englishSimilarWords:
          !isArabicSimilarWord ? newSimilarWords : englishSimilarWords,
    );
  }

// for Example
  WordModel _getWordAfterCheckExample(
      List<String> newExample, bool isArabicExample) {
    return WordModel(
      indexAtDatabase: indexAtDatabase,
      text: text,
      isArabic: isArabic,
      colorCode: colorCode,
      arabicExamples: isArabicExample ? newExample : arabicExamples,
      englishExemples: !isArabicExample ? newExample : englishExemples,
      arabicSimilarWords: arabicSimilarWords,
      englishSimilarWords: englishSimilarWords,
    );
  }
}
