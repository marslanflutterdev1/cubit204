import 'package:flutter/material.dart';
import 'dart:math' as math;

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Muhammad Arslan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                "New Civil Line Al Fateh Hostel Riaz Shahid Chowk Near By Iqbal Stadium 🏟️ Faisalabad, Pakistan",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone_enabled_sharp),
                      Text("0328-4123292")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.email_sharp),
                      Text("marslanflutterdeve1@gmail.com")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [Icon(Icons.library_add), Text("flutterdeilsjf")],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [Icon(Icons.email), Text("0328-4123292")],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
