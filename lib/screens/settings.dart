import 'package:flutter/material.dart';

class SettingsScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
        child: Row(
          children: [
            Column(
              children: [
                Text("Salvar todos os eventos"),
                Switch(value: true, onChanged: (value) => value)
              ],
            )
          ],
        ),
      ),
    );
  }
}
