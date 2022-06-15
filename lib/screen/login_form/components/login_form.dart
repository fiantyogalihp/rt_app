import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rt_app/configuration/configuration.dart';
import 'package:rt_app/screen/dashboard.dart';

import '../../components/rounded_button.dart';
import '../../components/rounded_input.dart';
import '../../components/rounded_input_password.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
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
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController? textControllerId;
  TextEditingController? textControllerPass;

  @override
  void initState() {
    super.initState();
    textControllerId = TextEditingController();
  }

  @override
  void dispose() {
    textControllerId!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: widget.isLogin ? 1.0 : 0.0,
      duration: widget.animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: widget.size.width,
          height: widget.defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                addVerticalSpace(40),
                SvgPicture.asset('assets/login.svg'),
                addVerticalSpace(40),
                RoundedInput(
                  icon: Icons.mail,
                  hint: 'NIK',
                  controller: textControllerId!,
                ),
                const RoundedPasswordInput(
                  hint: 'Password',
                ),
                addVerticalSpace(10),
                RoundedButton(
                  title: 'LOGIN',
                  onPressed: () {
                    if (textControllerId!.text.length > 6 &&
                        textControllerPass!.text.length > 6) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ));
                    } else {
                      errorMessage(
                          'NIK/Password',
                          'The NIK/Password must be at least 6 characters',
                          context);
                    }

                    if (textControllerId!.text.isEmpty ||
                        textControllerPass!.text.isEmpty) {
                      errorMessage('NIK/Password',
                          'The NIK/Password Cannot be empty', context);
                    }

                    /* else if (textControllerId!.text.isEmpty) {
                      errorMessage(
                          'NIK/Password', 'Please fill the Form', context);
                    } else {
                      errorMessage(
                          'NIK/Password',
                          'The NIK/Passwordmust be at least 6 characters',
                          context);
                    } */
                  },
                ),
                addVerticalSpace(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
