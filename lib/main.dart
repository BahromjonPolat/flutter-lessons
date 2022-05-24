import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        padding: const EdgeInsets.fromLTRB(45, 21, 65, 78),
        child: Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.home, size: 45.0, color: Colors.green),
              Text('Birinchi Child'),
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true, // titleni o'rtaga keltirish uchun
        elevation: 5.0, // soya
        backgroundColor: Colors.deepOrange, // App bar rangi
        // Title widget oladi
        title: const Text(
          "Hello, World!",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
  ));
}
