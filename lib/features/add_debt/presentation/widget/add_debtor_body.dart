// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:first_temp/core/app/type_def.dart';
import 'package:first_temp/features/add_debt/presentation/widget/custom_debt_form.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_debtor/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddDebtBody extends StatefulWidget {
  const AddDebtBody({
    Key? key,
    required this.installment,
  }) : super(key: key);

  final InstallmentRec installment;

  @override
  State<AddDebtBody> createState() => _AddDebtBodyState();
}

class _AddDebtBodyState extends State<AddDebtBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Center(
          child: CustomDebtForm(
            formKey: formKey,
            installment: widget.installment,
            text: S.of(context).add,
            // list: addDebt(context),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                // WriteDebtorCubit.get(context).addDebt(widget.installment.id);
                WriteDebtorCubit.get(context)
                    .addDebtToFirebase(widget.installment.fbID);
                Navigator.pop(context);
                Future.delayed(const Duration(seconds: 5), () {
                  ReadDebtorCubit.get(context).getDebtor();
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
