import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';

import 'package:flutter/material.dart';
import 'package:first_temp/features/add_customer/presentation/widget/custom_form.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDebtorBody extends StatefulWidget {
  const AddDebtorBody({
    super.key,
  });

  @override
  State<AddDebtorBody> createState() => _AddDebtorBodyState();
}

class _AddDebtorBodyState extends State<AddDebtorBody> {
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
                  // await ReadDebtorCubit.get(context).getDebtor();
                  // ignore: use_build_context_synchronously
                  Navigator.pop(context);
                  // ignore: use_build_context_synchronously
                  WriteDebtorCubit.get(context).addToFirebase();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
