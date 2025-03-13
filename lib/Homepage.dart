import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double heightScaffold = MediaQuery.of(context).size.height;
    double widthScaffold = MediaQuery.of(context).size.width;

    // Function to create a reusable TextField container
    Widget buildTextField(String hintText) {
      return Container(
        height: heightScaffold * 0.08,
        width: widthScaffold * 0.48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: const Color.fromARGB(255, 140, 160, 207),
            width: 2,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: heightScaffold * 0.8,
            width: widthScaffold * 0.9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: heightScaffold * 0.02),
                      child: buildTextField("Name"),
                    ),
                  ),
                ),
                // Second Column
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(
                    4,
                    (index) => Padding(
                      padding: EdgeInsets.only(bottom: heightScaffold * 0.02),
                      child: buildTextField("Name"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
