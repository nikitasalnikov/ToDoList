import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/models/title.dart';
import 'package:ver_1_2/ui/widgets/app_body/grid_view_item.dart';
import 'package:ver_1_2/ui/widgets/app_body/list_view_item.dart';

class AnimSwitch extends StatelessWidget {
  const AnimSwitch({
    Key? key,
    required this.isChanged,
    required this.items,
  }) : super(key: key);

  final bool isChanged;
  final List<ToDoOptions> items;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(
        milliseconds: 200,
      ),
      child: isChanged ?  GridViewItem() : const ListViewItem(),
    );
  }
}
