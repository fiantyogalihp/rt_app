import 'package:flutter/material.dart';
import 'package:rt_app/constants.dart';
import 'package:rt_app/screen/components/rounded_input.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({
    Key? key,
    required this.hint,
    // required this.controller,
  }) : super(key: key);

  final String hint;
  // final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
        // FocusScope.of(context).requestFocus(FocusNode());
      },
      // controller: controller,
      cursorColor: blueLight,
      obscureText: true,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock, color: blueLight),
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
