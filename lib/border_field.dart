import 'package:flutter/material.dart';

class borderField extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const borderField(this.label, this.controller, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic borda() {
      return OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.purple));
    }

    return Container(
      padding: EdgeInsets.only(left: 100, right: 100),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.purple,
        style: TextStyle(color: Colors.purple, fontSize: 20),
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            border: borda(),
            focusedBorder: borda(),
            enabledBorder: borda(),
            labelText: label,
            labelStyle: TextStyle(color: Colors.purple, fontSize: 16)),
        textAlign: TextAlign.center,

        // ignore: missing_return
        validator: (value){
          if(value.isEmpty){
            return "Insira um valor válido";
          }
        },
      ),
    );
  }
}
