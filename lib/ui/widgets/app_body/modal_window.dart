import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';

class ModalWindow extends StatefulWidget {
  final String modalTitle;
  final String modalBtn;
  final int i;

  const ModalWindow({
    Key? key,
    required this.modalTitle,
    required this.modalBtn,
    required this.i,
  }) : super(key: key);

  @override
  State<ModalWindow> createState() => _ModalWindowState();
}

class _ModalWindowState extends State<ModalWindow> {
  final titleController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    super.dispose();
  }

  // TitleApp newTitle = TitleApp();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            // onSaved: (newValue) =>
            //     newTitle.titleName = titleController.text = newValue!,
            controller: titleController,
            decoration: const InputDecoration(
              fillColor: AppColors.lightPurple,
              filled: true,
              labelText: 'Title',
              labelStyle: TextStyle(
                color: AppColors.purple,
                fontSize: 12,
              ),
              hintText: 'Title',
              hintStyle: TextStyle(
                color: AppColors.lightBlack,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              fillColor: AppColors.lightPurple,
              filled: true,
              labelText: 'Text',
              labelStyle: TextStyle(
                color: AppColors.purple,
                fontSize: 12,
              ),
              hintText: 'Title',
              hintStyle: TextStyle(
                color: AppColors.lightBlack,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Отмена'.toUpperCase(),
                  style: const TextStyle(
                    color: AppColors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              TextButton(
                onPressed: () {
                  ToDoModel.changeItem(
                    0,
                    title: titleController.value.text,
                  );
                  
                },
                child: Text(
                  widget.modalBtn.toUpperCase(),
                  style: const TextStyle(
                    color: AppColors.purple,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      scrollable: true,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide.none,
      ),
      title: Text(
        widget.modalTitle,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}
