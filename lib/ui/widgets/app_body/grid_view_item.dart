import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';
import 'package:ver_1_2/ui/widgets/app_body/grid_view_item_content.dart';

class GridViewItem extends StatelessWidget {
  // final List<ToDoOptions> items;

  const GridViewItem({
    Key? key,
    // required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          mainAxisExtent: 200,
        ),
        itemCount: ToDoModel.items.length,
        itemBuilder: (context, i) {
          return Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColors.blackShadow,
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(0, 2),
                ),
              ],
              borderRadius: BorderRadius.circular(16),
              color: AppColors.grey,
            ),
            padding: const EdgeInsets.all(16),
            child: GridViewItemContent(index: i),
          );
        });
  }
}
