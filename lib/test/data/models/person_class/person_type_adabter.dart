import 'package:first_temp/test/data/models/person_class/person_class.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PersonTypeAdabter extends TypeAdapter<Person> {
  @override
  Person read(BinaryReader reader) {
    return Person(
        name: reader.readString(),
        age: reader.readInt(),
        friend: reader.readList().cast<Person>());
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Person obj) {
    writer.writeString(obj.name);
    writer.writeInt(obj.age);
    writer.writeList(obj.friend);
  }
}
