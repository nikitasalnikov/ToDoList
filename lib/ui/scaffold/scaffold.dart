import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';
import 'package:ver_1_2/ui/scaffold/typebox.dart';
import 'package:ver_1_2/ui/widgets/app_body/app_body.dart';


class ScaffoldApp extends StatefulWidget {
  const ScaffoldApp({Key? key}) : super(key: key);

  @override
  State<ScaffoldApp> createState() => _ScaffoldAppState();
}

class _ScaffoldAppState extends State<ScaffoldApp> {
  bool typing = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 56,
        child: FloatingActionButton(
          backgroundColor: AppColors.grey,
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          onPressed: () {},
          child: const Icon(
            Icons.edit_outlined,
            color: AppColors.purple,
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: typing
            ? const Text(
                'Заметки',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 22,
                ),
              )
            : const TypeBox(),
        backgroundColor: AppColors.grey,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                typing = !typing;
              });
            },
            icon: Icon(
              typing ? Icons.search : Icons.close,
              size: 26,
              color: AppColors.black,
            ),
          ),
        ],
      ),
      body: const AppBody(),
    );
  }
}
