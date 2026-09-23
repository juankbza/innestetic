import 'package:flutter/material.dart';
import 'package:innestetic/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: Center(
         child: Text('HomeScreen'),
      ),
    );
  }
}