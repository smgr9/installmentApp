import 'package:first_temp/core/app/app_functions.dart';
import 'package:flutter/material.dart';

class GetFailureState extends StatelessWidget {
  final String message;
  final BuildContext perContext;
  const GetFailureState({
    super.key,
    required this.message,
    required this.perContext,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () => refreshDataFormFB(perContext),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: SizedBox(width: 200, height: 200, child: Text(message)),
        ),
      ),
    );
  }
}
