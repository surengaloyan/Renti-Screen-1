import 'package:flutter/material.dart';

class CustomExpenceBlock extends StatelessWidget {
  const CustomExpenceBlock({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, top: 19, right: 6,),
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 255, 255, 255),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text('Долг февраль 2021',
                  style: TextStyle(color: Colors.white)),
              Row(
                children: const [
                  Text(
                    '4 должника',
                    style: TextStyle(
                      color: Color.fromARGB(76, 255, 255, 255),
                    ),
                  ),
                  SizedBox(width: 13),
                ],
              ),
            ],
          ),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                '0 ₽',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 46,
                ),
              ),
              Ink(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                ),
                child: const IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    color: Color(0xFF383838),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
