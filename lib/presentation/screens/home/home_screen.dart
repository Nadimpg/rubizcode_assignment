import 'package:flutter/material.dart';
import 'package:rubizcode_assignment/presentation/widgets/nav_bar/nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }
}
