import 'package:flutter/material.dart';

class CusomTabBarHomeScreen extends StatefulWidget {
  const CusomTabBarHomeScreen({super.key});

  @override
  State<CusomTabBarHomeScreen> createState() => _CusomTabBarHomeScreenState();
}

class _CusomTabBarHomeScreenState extends State<CusomTabBarHomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customTab(index: 0, title: "All"),
                customTab(index: 1, title: "Pending"),
                customTab(index: 2, title: "Completed"),
                customTab(index: 3, title: "Cancelled"),
              ],
            ),
          ),
          IndexedStack(
            index: selectedIndex,
            children: const [
              Center(child: Text("All")),
              Center(child: Text("Pending")),
              Center(child: Text("Completed")),
              Center(child: Text("Cancelled")),
            ],
          )
        ],
      ),
    );
  }

  Widget customTab({
    required String title,
    required int index,
  }) {
    var selected = selectedIndex == index;
    return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: selected ? null : Border.all(),
            color: selected ? Colors.amber : Colors.transparent,
          ),
          child: Text(
            title,
            style: TextStyle(color: selected ? Colors.white : Colors.black),
          ),
        ));
  }
}
