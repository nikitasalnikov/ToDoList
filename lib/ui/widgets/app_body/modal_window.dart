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
  final textController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
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
            controller: textController,
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
                  setState(() {
                    Navigator.pushNamed(
                      context,
                      '/',
                    );
                    ToDoModel.changeItem(widget.i,
                        title: titleController.value.text,
                        text: textController.value.text);
                  });
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
