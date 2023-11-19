import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/cupertino.dart';

class TopAuthUiLogo extends StatelessWidget {
  const TopAuthUiLogo({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Image.asset(
            image,
            height: 150,
            width: 150,
          ),
        ),
        Text(
          text,
          style: TextStyle(color: primaryColor(context)),
          // style: AppFontSize.h4Bold,
        )
      ],
    );
  }
}
