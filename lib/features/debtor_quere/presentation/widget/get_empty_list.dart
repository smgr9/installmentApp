import 'package:first_temp/core/app/app_functions.dart';
import 'package:first_temp/test/presentation/styles/color_manger.dart';
import 'package:flutter/material.dart';

class GetEmptyList extends StatefulWidget {
  final BuildContext parentContext;
  const GetEmptyList({
    super.key,
    required this.parentContext,
  });

  @override
  State<GetEmptyList> createState() => _GetEmptyListState();
}

class _GetEmptyListState extends State<GetEmptyList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: () => refreshDataFormFB(widget.parentContext),
        child: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.list, size: 30),
                  Text(
                    "Word List is empty",
                    style: TextStyle(
                      color: ColorManger.white,
                      fontSize: 21,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
