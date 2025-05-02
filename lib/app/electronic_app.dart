
import 'package:electronicapp/screens/get_start.dart';
import 'package:flutter/material.dart';

class Electronicapp extends StatelessWidget {
  const Electronicapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: GetStartedScreen()
    );
  }
}
