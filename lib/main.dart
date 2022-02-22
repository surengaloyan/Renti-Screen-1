import 'package:flutter/material.dart';
import 'package:flutter_application_5_renti/expence_block.dart';
import 'top_dropdown.dart';
import 'income_block.dart';
import 'expence_block.dart';
import 'multi_navigator.dart';
import 'bottom_navbar.dart';
import 'admissionbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Renti();
  }
}

class Renti extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RentiState();
  }
}

class _RentiState extends State<Renti> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Rubik'),
      home: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Color(0xFF5E3244), Color(0xFF3E4350), Color(0xFF27535B)],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    //֊֊֊֊֊dropdown----------------
                    CustomDropdownButtonState(),
                    const SizedBox(height: 16),
                    //֊֊֊֊֊income block------------
                    const CustomIncomeBlock(),
                    const SizedBox(height: 16),
                    //֊֊֊֊֊expence block-----------
                    const CustomExpenceBlock(),
                    const SizedBox(height: 17),
                    //-----multi navigation block--
                    const CustomMultiNavBlock(),
                  ],
                ),
              ),
              //-----------admission block---------
              const CustomAdmissionBar(),
            ],
          ),
          //---------------bottom navigation bar---
          bottomNavigationBar: const CustomBottomNavBar(),
        ),
      ),
    );
  }
}
