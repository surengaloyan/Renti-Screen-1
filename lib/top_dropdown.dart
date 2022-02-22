import 'package:flutter/material.dart';

class CustomDropdownButtonState extends StatelessWidget {
  CustomDropdownButtonState({Key? key}) : super(key: key);
  String dropdownWalue = 'Бизнес-центр Гулливер';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 61,
      padding: const EdgeInsets.only(left: 19, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          onChanged: null,
          alignment: AlignmentDirectional.centerStart,
          style: const TextStyle(
            color: Color(0xFF383838),
          ),
          dropdownColor: Colors.white,
          value: dropdownWalue,
          underline: null,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Color(0xFFA1A1A1),
            size: 35,
          ),
          items: <String>[
            'Все объекты',
            'Бизнес-центр Гулливер',
            'Бизнес-центр Параллель',
            'Офис на Баррикадной'
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}