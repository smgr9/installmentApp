// ignore_for_file: public_member_api_docs, sort_constructors_first
class Person {
  String name;
  int age;
  List<Person> friend;
  Person({
    required this.name,
    required this.age,
    required this.friend,
  });

  @override
  String toString() =>
      'Person(name: $name, age: $age, friend: ${friend.map((e) => e.name)})';
}
