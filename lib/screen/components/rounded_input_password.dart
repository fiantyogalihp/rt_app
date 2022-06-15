import 'package:flutter/material.dart';
import 'package:rt_app/constants.dart';
import 'package:rt_app/screen/components/rounded_input.dart';

class RoundedPasswordInput extends StatelessWidget {
  const RoundedPasswordInput({
    Key? key,
<<<<<<< HEAD
    required this.icon,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextEditingController controller;
=======
    required this.hint,
    // required this.controller,
  }) : super(key: key);

  final String hint;
  // final TextEditingController controller;
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7

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
<<<<<<< HEAD
      controller: controller,
      cursorColor: blueLight,
      obscureText: true,
      decoration: InputDecoration(
          icon: Icon(icon, color: blueLight),
=======
      // controller: controller,
      cursorColor: blueLight,
      obscureText: true,
      decoration: InputDecoration(
          icon: const Icon(Icons.lock, color: blueLight),
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
          hintText: hint,
          border: InputBorder.none),
    ));
  }
}
