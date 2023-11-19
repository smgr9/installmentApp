import 'package:flutter/material.dart';

class GetLoadingState extends StatelessWidget {
  const GetLoadingState({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
