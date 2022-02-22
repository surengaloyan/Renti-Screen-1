import 'package:flutter/material.dart';

class CustomAdmissionBar extends StatelessWidget {
  const CustomAdmissionBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, top: 11, right: 20, bottom: 34),
      decoration: const BoxDecoration(
        color: Color.fromARGB(25, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 35,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: const Color(0xFFEAEAEA),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color.fromARGB(20, 0, 0, 0),
            ),
            child: const Center(
              child: Text(
                'Нет поступлений',
                style: TextStyle(color: Color.fromARGB(76, 255, 255, 255)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
