import 'package:flutter/material.dart';
import 'package:myfirebase/Screens/custom_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final TextEditingController _taskController=TextEditingController();
  void insertItem(){
           Navigator.of(context).pop(); 

  }
    void _showAddTaskDialog() {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        text: 'Add New Task',
        controller: _taskController,
        isConfirm: insertItem,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text('Todo App'),
        centerTitle: true,
      ),
     floatingActionButton: FloatingActionButton(
      onPressed: (){
       _showAddTaskDialog();
      },
      backgroundColor: Colors.blue,
      child:const Icon(Icons.add),
      ),

    );
  }
}