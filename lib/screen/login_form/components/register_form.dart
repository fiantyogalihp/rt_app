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
<<<<<<< HEAD
  TextEditingController? textControllerId;
  TextEditingController? textControllerPass;
  TextEditingController? textControllerName;

  @override
  void initState() {
    textControllerId = TextEditingController();
=======
  TextEditingController? textController;

  @override
  void initState() {
    textController = TextEditingController();
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
    super.initState();
  }

  @override
  void dispose() {
<<<<<<< HEAD
    textControllerId!.dispose();
=======
    textController!.dispose();
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
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
<<<<<<< HEAD
                      controller: textControllerId!),
                  RoundedInput(
                      icon: Icons.face_rounded,
                      hint: 'Name',
                      controller: textControllerName!),
                  RoundedPasswordInput(
                    icon: Icons.lock,
                    hint: 'Password',
                    controller: textControllerPass!,
                  ),
=======
                      controller: textController!),
                  RoundedInput(
                      icon: Icons.face_rounded,
                      hint: 'Name',
                      controller: textController!),
                  RoundedPasswordInput(hint: 'Password'),
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
                  addVerticalSpace(10),
                  RoundedButton(
                    title: 'SIGN UP',
                    onPressed: () {
<<<<<<< HEAD
                      if (textControllerId!.text.isNotEmpty) {
=======
                      if (textController!.text.isNotEmpty) {
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ));
                      } else {
                        errorMessage(
                            'NIK/Password', 'Please fill the Form', context);
                      }
<<<<<<< HEAD
                      if (textControllerId!.text.length > 6 &&
                          textControllerPass!.text.length > 6 &&
                          textControllerName!.text.length > 2) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Dashboard(),
                            ));
                      } else {
                        errorMessage(
                            'NIK/Password',
                            'The NIK/Password must be at least 6 characters, and the Name must be at least 3',
                            context);
                      }

                      if (textControllerId!.text.isEmpty ||
                          textControllerPass!.text.isEmpty ||
                          textControllerName!.text.isEmpty) {
                        errorMessage('NIK/Name/Password',
                            'The NIK/Password Cannot be empty', context);
                      }
=======
>>>>>>> 550be805247782439d23b5b78b4b95756bd1a1b7
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
