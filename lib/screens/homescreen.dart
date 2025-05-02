import 'package:electronicapp/widgets/containerslide.dart';
import 'package:electronicapp/widgets/listviewbuilder_widget.dart';
import 'package:electronicapp/widgets/menuhorizontalList_widget.dart';
import 'package:electronicapp/widgets/rowtext_widget.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            child: const Image(
              image: AssetImage("assets/images/logo.png"),
              width: 180,
              height: 180,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 231, 231),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(62, 182, 147, 243),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(Icons.notifications, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                ContainerSlide(),
                RowTextWidget(leftText: "Category", rightText: 'see All'),
                MenuhorizontallistWidget(itemWidth: 80, itemHeight: 80),
                RowTextWidget(leftText: "Popular", rightText: 'see All'),
                ListviewBuilderWidget(),
                RowTextWidget(leftText: "Lasted", rightText: 'see All'),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
