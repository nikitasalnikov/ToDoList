import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/models/title.dart';
import 'package:ver_1_2/ui/widgets/app_body/anim_switch.dart';
import 'package:ver_1_2/ui/widgets/app_body/header_btn_text.dart';

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  bool isChanged = true;

  List<ToDoOptions> toDoItems = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Все заметки',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                width: 121,
                child: FloatingActionButton(
                  backgroundColor: AppColors.grey,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                  onPressed: () {
                    setState(() {
                      isChanged = !isChanged;
                    });
                  },
                  child: HeaderBtnText(isChanged: isChanged),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Expanded(
            child: AnimSwitch(
              items: toDoItems,
              isChanged: isChanged,
            ),
          ),
        ],
      ),
    );
  }
}
