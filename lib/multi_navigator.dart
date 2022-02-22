import 'package:flutter/material.dart';

class CustomMultiNavBlock extends StatelessWidget {
  const CustomMultiNavBlock({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.circle, size: 12, color: Colors.white),
        SizedBox(width: 8),
        Icon(Icons.circle, size: 12, color: Color.fromARGB(20, 255, 255, 255)),
      ],
    );
  }
}
