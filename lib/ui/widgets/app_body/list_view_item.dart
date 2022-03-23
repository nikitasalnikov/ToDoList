import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/widgets/app_body/list_view_item_content.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemBuilder: (context, i) {
        return Container(
          height: 150,
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
          child: ListViewItemContent(index: i),
        );
      },
      itemCount: 7,
    );
  }
}
