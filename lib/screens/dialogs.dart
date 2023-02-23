import 'package:flutter/material.dart';

class Dialogs {
  static Widget addExecution(BuildContext context) {
    late var txtName = TextEditingController(text: "22/02/2023");
    return AlertDialog(
      title: Text("Add Execution"),
      content: Center(
        child: TextField(
          controller: txtName,
          decoration: InputDecoration(hintText: "Insert the execution name"),
        ),
      ),
      actions: [
        ElevatedButton(
            onPressed: () => {
                  // salvar no shared preferences como ultima execução
                  // criar uma pasta para que possa salvar os arquivos
                  Navigator.pop(context)
                },
            child: Text("Save"))
      ],
    );
  }
}
