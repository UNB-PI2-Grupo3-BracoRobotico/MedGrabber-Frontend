import 'package:flutter/material.dart';
import 'package:grabber/features/shared/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: GrabberBottomNavigationBar(),
      body: Center(
        child: Text('banan'),
      ),
    );
  }
}
