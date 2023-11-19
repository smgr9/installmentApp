import 'package:first_temp/test/presentation/manger/read/read_cubit.dart';
import 'package:first_temp/test/presentation/manger/write/write_cubit.dart';
import 'package:first_temp/test/presentation/widget/arabic_or_english_widget.dart';
import 'package:first_temp/test/presentation/widget/color_widget.dart';
import 'package:first_temp/test/presentation/widget/custom_form_filed.dart';
import 'package:first_temp/test/presentation/widget/done_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddWordDialog extends StatefulWidget {
  const AddWordDialog({Key? key}) : super(key: key);

  @override
  State<AddWordDialog> createState() => _AddWordDialogState();
}

class _AddWordDialogState extends State<AddWordDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: BlocConsumer<WriteCubit, WriteState>(
      builder: (context, state) {
        return AnimatedContainer(
          padding: const EdgeInsets.all(15),
          color: Color(WriteCubit.get(context).colorCode),
          duration: const Duration(milliseconds: 750),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ArabicOrEnglishWidget(
                colorCode: WriteCubit.get(context).colorCode,
                arabicIsSelected: WriteCubit.get(context).isArabic,
              ),
              const SizedBox(height: 10),
              ColorWidget(activeColorCode: WriteCubit.get(context).colorCode),
              const SizedBox(height: 10),
              CustomFormFiled(lable: "Add Word", formKey: formKey),
              const SizedBox(height: 15),
              // Text("${WriteCubit.get(context).isArabic}"),
              DoneButton(
                  colorCode: WriteCubit.get(context).colorCode,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      WriteCubit.get(context).addWord();
                      ReadCubit.get(context).getWords();
                    } else {}
                  })
            ],
          ),
        );
      },
      listener: (BuildContext context, WriteState state) {
        if (state is WriteSuccess) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            // custom_SnakBar("word had been added 🧡", Colors.green),
            customSnakBar("word had been added 🧡", Colors.green),
          );
        } else if (state is WriteFailur) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            // custom_SnakBar("there is an erorr 😥", Colors.red),
            customSnakBar(state.message, Colors.red),
          );
        }
      },
    ));
  }

  SnackBar customSnakBar(String message, Color color) {
    return SnackBar(
      content: Center(
        child: Text(
          message,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
