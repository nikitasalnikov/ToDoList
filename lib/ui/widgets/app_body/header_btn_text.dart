import 'package:flutter/material.dart';
import 'package:ver_1_2/ui/colors/colors.dart';

class HeaderBtnText extends StatelessWidget {
  const HeaderBtnText({
    Key? key,
    required this.isChanged,
  }) : super(key: key);

  final bool isChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          isChanged ? Icons.list : Icons.grid_on,
          color: AppColors.purple,
        ),
        Text(
          isChanged ? 'Сетка' : 'Список',
          style: const TextStyle(color: AppColors.purple),
        ),
      ],
    );
  }
}
