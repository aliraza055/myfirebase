import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  String text;
  final VoidCallback isConfirm;
  TextEditingController controller;
    CustomDialog({super.key,required this.text,required this.controller,required this.isConfirm,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(text),
     content: TextFormField(
      controller: controller,
    decoration:const InputDecoration(
      hintText: 'Add new todo'
    ),
     ),
     actions: [
      TextButton(onPressed: (){
      Navigator.of(context).pop(); 
      }, child:const Text('Cancel')),
      TextButton(
        onPressed: isConfirm,
       child:const Text('OK'))
     ],
    );
  }
}