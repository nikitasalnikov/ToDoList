import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';

class ListViewItemContent extends StatefulWidget {
  final int index;

  const ListViewItemContent({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<ListViewItemContent> createState() => _ListViewItemContentState();
}

class _ListViewItemContentState extends State<ListViewItemContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              ToDoModel.items[widget.index].title.toString(),
              style: const TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const Text(
              '07.03.2022',
              style: TextStyle(
                color: AppColors.lightGrey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          ToDoModel.items[widget.index].text.toString(),
          style: const TextStyle(
            color: AppColors.lightBlack,
            fontSize: 14,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () async {
                await ToDoModel.modalWindow(context, widget.index);
              },
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
