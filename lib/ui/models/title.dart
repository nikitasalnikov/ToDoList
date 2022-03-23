import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/widgets/app_body/modal_window.dart';

class ToDoModel {
  static List<ToDoOptions> items = [
    ToDoOptions(
        title: 'Title Test',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test1',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
    ToDoOptions(
        title: 'Title Test2',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'),
  ];

  static changeItem(int index, {required String title, required String text}) {
    for (var i = 0; i < items.length; i++) {
      if (items.length > i) {
        items[i].title = title;
        items[i].text = text;
      }
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

  ToDoOptions({required this.title, required this.text});
}
