import 'package:flutter/material.dart';

class CustomIncomeBlock extends StatelessWidget {
  const CustomIncomeBlock({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, top: 6, right: 6, bottom: 18),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 255, 255, 255),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('Доход за февраль 2021',
                  style: TextStyle(color: Colors.white)),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                ),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.bar_chart_rounded,
                    color: Color(0xFF383838),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 17),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '0 ₽',
              style: TextStyle(
                color: Colors.white,
                fontSize: 46,
              ),
            ),
          ),
          const SizedBox(height: 7.5),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'из 0 ₽',
              style: TextStyle(
                color: Color.fromARGB(75, 255, 255, 255),
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
