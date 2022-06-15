// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/rounded_input.dart';
import '../../../configuration/configuration.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_password.dart';
import '../../dashboard.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  TextEditingController? textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isLogin ? 0.0 : 1.0,
      duration: widget.animationDuration * 5,
      child: Visibility(
        visible: !widget.isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: widget.size.width,
            height: widget.defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  addVerticalSpace(10),
                  const Text(
                    'Welcome',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  addVerticalSpace(40),
                  SvgPicture.asset('assets/register.svg'),
                  addVerticalSpace(40),
                  RoundedInput(
                      icon: Icons.mail,
                      hint: 'NIK',
                      controller: textController!),
                  RoundedInput(
                      icon: Icons.face_rounded,
                      hint: 'Name',
                      controller: textController!),
                  RoundedPasswordInput(hint: 'Password'),
                  addVerticalSpace(10),
                  RoundedButton(
                    title: 'SIGN UP',
                    onPressed: () {
                      if (textController!.text.isNotEmpty) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ));
                      } else {
                        errorMessage(
                            'NIK/Password', 'Please fill the Form', context);
                      }
                    },
                  ),
                  addVerticalSpace(10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
