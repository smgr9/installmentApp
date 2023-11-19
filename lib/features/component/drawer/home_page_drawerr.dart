import 'package:first_temp/core/app/app_color.dart';
import 'package:flutter/material.dart';

class HomePageDrower extends StatelessWidget {
  const HomePageDrower({
    Key? key,
    required this.index,
    required this.items,
  }) : super(key: key);

  final int index;
  final List items;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (items[index]['function'] != null) {
          items[index]['function']!(); // استدعاء الدالة إذا كانت معرفة
        }
        // Navigator.of(context).pushNamed(items[index]['function']);
      },
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SizedBox(
          // width: MediaQuery.of(context).size.width / 0.5,
          // height: MediaQuery.of(context).size.height / 16,
          child: Card(
            child: Center(
                child: ListTile(
              title: Text(
                items[index]['text'],
                style: TextStyle(color: primaryColor(context)),
              ),
              leading: Icon(items[index]['icon']),
            )),
          ),
        ),
      ),
    );
  }
}
