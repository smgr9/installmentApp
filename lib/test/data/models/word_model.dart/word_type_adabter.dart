import 'package:first_temp/test/data/models/word_model.dart/word_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class WordTypeAdapter extends TypeAdapter<WordModel> {
  @override
  WordModel read(BinaryReader reader) {
    return WordModel(
      indexAtDatabase: reader.readInt(),
      text: reader.readString(),
      isArabic: reader.readBool(),
      colorCode: reader.readInt(),
      arabicExamples: reader.readStringList(),
      englishExemples: reader.readStringList(),
      englishSimilarWords: reader.readStringList(),
      arabicSimilarWords: reader.readStringList(),
    );
  }

  @override
  int get typeId => 4;

  @override
  void write(BinaryWriter writer, WordModel obj) {
    writer.writeInt(obj.indexAtDatabase);
    writer.writeString(obj.text);
    writer.writeBool(obj.isArabic);
    writer.writeInt(obj.colorCode);
    writer.writeStringList(obj.arabicExamples);
    writer.writeStringList(obj.englishExemples);
    writer.writeStringList(obj.arabicSimilarWords);
    writer.writeStringList(obj.englishSimilarWords);
  }
}
