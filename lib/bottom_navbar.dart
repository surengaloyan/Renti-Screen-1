import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      //------NAVBAR-----------------
      color: const Color.fromARGB(25, 255, 255, 255),
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            getBtn(Icons.home, const Color(0xFF8EC122),
                const Color.fromARGB(255, 172, 170, 170)),
            getBtn(Icons.pie_chart_rounded, const Color(0xFF919CAE),
                Colors.transparent),
            getBtn(Icons.people_alt_rounded, const Color(0xFF919CAE),
                Colors.transparent),
            getBtn(Icons.settings_sharp, const Color(0xFF919CAE),
                Colors.transparent),
          ],
        ),
      ),
    );
  }
}

Widget getBtn(IconData btn, Color btnClr, Color bgClr) {
  return btn != Icons.people_alt_rounded
      ? Ink(
          decoration: ShapeDecoration(
            color: bgClr,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: IconButton(
            icon: Icon(
              btn,
              color: btnClr,
              size: 30,
            ),
            onPressed: null,
          ),
        )
      : Stack(
          children: [
            Ink(
              height: 60,
              width: 50,
              decoration: ShapeDecoration(
                color: bgClr,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: IconButton(
                icon: Icon(
                  btn,
                  color: btnClr,
                  size: 30,
                ),
                onPressed: null,
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
}
