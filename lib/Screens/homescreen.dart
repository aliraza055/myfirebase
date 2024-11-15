import 'package:flutter/material.dart';
import 'package:myfirebase/Screens/custom_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 final TextEditingController _taskController=TextEditingController();
  void insertFunction(){

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
        CustomDialog(text: 'Add new Task',
         controller:_taskController ,
          isConfirm: insertFunction);
      },
      child:const Text('add'),
      ),

    );
  }
}