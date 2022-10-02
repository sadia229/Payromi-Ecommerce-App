
import 'package:flutter/material.dart';

import '../../Constants/Colors/app_color.dart';

class MaterialTextFieldPassword extends StatefulWidget {

  final String hintText;

  MaterialTextFieldPassword({required this.controller, required this.hintText});
  TextEditingController controller = TextEditingController();

  @override
  State<MaterialTextFieldPassword> createState() => _MaterialTextFieldState();
}

class _MaterialTextFieldState extends State<MaterialTextFieldPassword> {
  bool _passwordVisible = true;

  @override
  void initState() {
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 45,
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please fillup';
          }
          return null;
        },
        obscureText: _passwordVisible,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: textfieldTextColor,
            fontSize: 18,
            fontWeight: FontWeight.w800
          ),
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              color:textFieldBorder,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          contentPadding:
          EdgeInsets.symmetric(vertical: 20.0, horizontal: 26.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color:textFieldBorder, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: Colors.lightBlueAccent, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
      ),
    );
  }
}
