import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';

class GridViewItemContent extends StatefulWidget {
  final int index;

  const GridViewItemContent({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<GridViewItemContent> createState() => _GridViewItemContentState();
}

class _GridViewItemContentState extends State<GridViewItemContent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ToDoModel.items[widget.index].title.toString(),
          style: const TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          '07.03.2022',
          style: TextStyle(
            color: AppColors.lightGrey,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 15),
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
