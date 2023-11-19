import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
import 'package:first_temp/features/add_customer/presentation/manger/writer_debtor/write_debtor_cubit.dart';
import 'package:first_temp/features/add_dubit/presentation/widget/custom_debt_form.dart';
import 'package:first_temp/features/home/data/models/dobter_model.dart';
import 'package:first_temp/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddDebtBody extends StatefulWidget {
  final DobterModel installment;
  const AddDebtBody({
    super.key,
    required this.installment,
  });

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
            installmentModel: widget.installment,
            text: S.of(context).add,
            // list: addDebt(context),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                WriteDebtorCubit.get(context).addDebt(widget.installment.id);
                ReadDebtorCubit.get(context).getDebtor();
                Navigator.pop(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
