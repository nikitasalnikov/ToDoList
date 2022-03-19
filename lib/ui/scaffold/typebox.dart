import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';

class TypeBox extends StatefulWidget {
  const TypeBox({Key? key}) : super(key: key);

  @override
  State<TypeBox> createState() => _TypeBoxState();
}

class _TypeBoxState extends State<TypeBox> {
  TextEditingController textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppColors.lightGrey,
      child: TextFormField(
        controller: textFieldController,
        decoration: InputDecoration(
          fillColor: AppColors.grey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: BorderSide.none),
          filled: true,
          hintText: 'Search',
          prefixIcon: FloatingActionButton(
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPressed: () {},
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
        ),
      ),
    );
  }
}
