import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';
import 'package:ver_1_2/ui/widgets/app_body/modal_window.dart';

class GridViewItemContent extends StatefulWidget {
  // final List<ToDoOptions> list;
  final int index;

  const GridViewItemContent({
    Key? key,
    // required this.list,
    required this.index,
  }) : super(key: key);

  @override
  State<GridViewItemContent> createState() => _GridViewItemContentState();
}

class _GridViewItemContentState extends State<GridViewItemContent> {
  @override
  void initState() {
    // list = widget.list;
    super.initState();
  }
  // TitleApp newTitle = TitleApp();

  @override
  Widget build(BuildContext context) {
    print('grid');

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
              onPressed: () async {
                await ToDoModel.modalWindow(context, widget.index);
                // setState(() {});
              },
              icon: const Icon(
                Icons.edit_outlined,
                color: AppColors.purple,
              ),
            ),
            IconButton(
              onPressed: () {
                // print(newTitle.titleName);
              },
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
