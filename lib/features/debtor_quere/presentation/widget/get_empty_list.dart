import 'package:first_temp/features/add_customer/presentation/manger/read_debtor/read_debtor_cubit.dart';
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
        onRefresh: () => _onRefresh(widget.parentContext),
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

Future<void> _onRefresh(BuildContext context) async {
  ReadDebtorCubit.get(context).getDebtor();
  print("object");
}
