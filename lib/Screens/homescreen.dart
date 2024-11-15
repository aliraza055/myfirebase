import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text('Todo App'),
        centerTitle: true,
      ),
     floatingActionButton: FloatingActionButton(
      onPressed: (){},
      child:const Text('add'),
      ),

    );
  }
}