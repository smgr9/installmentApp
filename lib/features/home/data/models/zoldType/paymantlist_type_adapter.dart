// import 'package:first_temp/features/home/data/models/paymentlist_model.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// class PaymantlistTypeAdaper extends TypeAdapter<Paymentlist> {
//   @override
//   Paymentlist read(BinaryReader reader) {
//     return Paymentlist(
//       id: reader.readInt(),
//       date: reader.readString(),
//       collected: reader.readDouble(),
//     );
//   }

//   @override
//   int get typeId => 3;

//   @override
//   void write(BinaryWriter writer, Paymentlist obj) {
//     writer
//       ..writeInt(obj.id)
//       ..writeString(obj.date)
//       ..writeDouble(obj.collected);
//   }
// }
