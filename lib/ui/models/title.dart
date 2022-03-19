import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/widgets/app_body/modal_window.dart';

class ToDoModel {
  static List<ToDoOptions> items = [
    ToDoOptions(title: 'Title Test'),
    ToDoOptions(title: 'Title Test1'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
    ToDoOptions(title: 'Title Test2'),
  ];

  static void changeItem(int index, {required String title}) {
    if (items.length > index) {
      items[index].title = title;
    }
  }

  static Future modalWindow(BuildContext context, int index) async {
    await showDialog(
      context: context,
      builder: (context) {
        return ModalWindow(
          modalTitle: 'Изменить заметку',
          modalBtn: 'Изменить',
          i: index,
        );
      },
    );
  }
}

class ToDoOptions {
  String? title;
  String? date;
  String? text;

  ToDoOptions({required this.title});
}
