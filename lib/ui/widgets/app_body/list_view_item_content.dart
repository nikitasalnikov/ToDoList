import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/widgets/app_body/modal_window.dart';

class ListViewItemContent extends StatelessWidget {
  const ListViewItemContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Text(
              'Title',
              style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            Text(
              '07.03.2022',
              style: TextStyle(
                color: AppColors.lightGrey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
          style: TextStyle(
            color: AppColors.lightBlack,
            fontSize: 14,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.edit_outlined,
                color: AppColors.purple,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline,
                color: AppColors.red,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
