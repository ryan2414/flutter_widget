import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Study to Container'),
        backgroundColor: Colors.blue,
      ),
      body: CustomContainer(),
    ),
  ));
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
          color: Color(0xFFFFE082), //Colors.amber.shade200,
          border: Border.all(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: Offset(6, 6),
                blurRadius: 10,
                spreadRadius: 10),
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                offset: Offset(-6, -6),
                blurRadius: 10,
                spreadRadius: 10),
          ],
        ),
        child: Center(
            child:
                Container(color: Colors.green, child: Text('Hello Container'))),
      ),
    );
  }
}
