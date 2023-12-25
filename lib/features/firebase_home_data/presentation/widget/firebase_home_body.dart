import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/widget/custom_form.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirebaseHomeBody extends StatefulWidget {
  const FirebaseHomeBody({
    super.key,
  });

  @override
  State<FirebaseHomeBody> createState() => _FirebaseHomeBodyState();
}

class _FirebaseHomeBodyState extends State<FirebaseHomeBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<WriteDebtorCubit, WriteDebtorState>(
      listener: (context, state) {
        if (state is WriteDebtorSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Center(child: Text("تم إضافة العميل بنجاح ❤")),
            ),
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: CustomForm(
              formKey: formKey,
              text: S.of(context).save_data,
              onPressed: () async {
                if (formKey.currentState!.validate()) {
                  // await WriteDebtorCubit.get(context).addDebtor();
                  // ignore: use_build_context_synchronously
                  await ReadDebtorCubit.get(context).getDebtor();
                  // ignore: use_build_context_synchronously
                  WriteDebtorCubit.get(context).addDobterToFirebase();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

// import 'package:first_temp/features/firebase_home_data/data/models/task_model.dart';
// import 'package:flutter/material.dart';

// class FirebaseHomeBody extends StatelessWidget {
//   FirebaseHomeBody({
//     super.key,
//   });

//   List<Task> taskList = [
//     Task(title: "task1"),
//     Task(title: "task2"),
//     Task(title: "task3"),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Center(
//           child: Chip(
//             label: Text("Tasks"),
//           ),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: taskList.length,
//             itemBuilder: (context, index) {
//               var task = taskList[index];
//               return ListTile(
//                 title: Text(
//                   task.title,
//                 ),
//                 trailing: Checkbox(
//                   value: task.isDone,
//                   onChanged: (value) {},
//                 ),
//               );
//             },
//           ),
//         )
//       ],
//     );
//   }
// }

