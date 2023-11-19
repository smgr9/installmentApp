import 'package:flutter/material.dart';

class GetFailureState extends StatelessWidget {
  final String message;
  const GetFailureState({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
