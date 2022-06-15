// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rt_app/constants.dart';
import '../login_form/components/cancel_button.dart';
import '../login_form/components/login_form.dart';
import '../login_form/components/register_form.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool isLogin = true;
  late Animation<double> containerSize;
  AnimationController? animationController;
  Duration animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: animationDuration);
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double viewInset = MediaQuery.of(context).viewInsets.bottom;
    double defaultLoginSize = size.height - (size.height * 0.2);
    double defaultRegisterSize = size.height - (size.height * 0.1);

    containerSize =
        Tween<double>(begin: size.height * 0.1, end: defaultRegisterSize)
            .animate(CurvedAnimation(
                parent: animationController!, curve: Curves.linear));

    return Scaffold(
      body: Stack(
        children: [
          // * decorations
          Positioned(
              top: 100,
              right: -50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: blueLight),
              )),

          Positioned(
              top: -50,
              left: -50,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100), color: blueLight),
              )),

          // * Cancel Button
          CancelButton(
            isLogin: isLogin,
            animationDuration: animationDuration,
            size: size,
            animationController: animationController,
            tapEvent: isLogin
                ? null
                : () {
                    // returning null to disable the button
                    animationController!.reverse();
                    setState(() {
                      isLogin = !isLogin;
                    });
                  },
          ),

          // * Login Form
          LoginForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultLoginSize),

          // *  Register Container
          AnimatedBuilder(
            animation: animationController!,
            builder: (context, child) {
              if (viewInset == 0 && isLogin) {
                return buildRegisterContainer();
              } else if (!isLogin) {
                return buildRegisterContainer();
              }

              // Returning empty container to hide the widget
              return Container();
            },
          ),

          // * Register Form
          RegisterForm(
              isLogin: isLogin,
              animationDuration: animationDuration,
              size: size,
              defaultLoginSize: defaultRegisterSize),
        ],
      ),

      /* SlidingUpPanel(
        minHeight: 50,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage('assets/bg.jpg'),
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
                isAntiAlias: true,
                colorFilter:
                    ColorFilter.mode(black.withOpacity(.2), BlendMode.darken)),
            gradient: const LinearGradient(
                colors: <Color>[transparent, black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Opacity(
                opacity: .9,
                child: Lottie.asset('assets/lottie/homesilver.json',
                    frameRate: FrameRate(60),
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                    animate: true,
                    repeat: false, onLoaded: (composition) {
                  if (composition.duration.inMilliseconds > 0) {
                    animationController!.duration = composition.duration;
                  }
                }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 240,
                    height: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(45),
                        highlightColor: transparent,
                        splashColor: blueLight,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dashboard()));
                        },
                        child: const Center(
                            child: Text(
                          'Sign In',
                          style: TextStyle(fontWeight: bold, fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        backdropEnabled: true,
        panel: Card(
          elevation: 15,
          child: Container(
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: grey.withOpacity(.7),
                      ),
                    ),
                  ),
                  addVerticalSpace(20),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Login',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: medium,
                        )),
                  ),
                  addVerticalSpace(20),
                  const RoundedInput(icon: Icons.mail_outline, hint: 'NIK'),
                  addVerticalSpace(20),
                  const RoundedPasswordInput(hint: 'Password'),
                  addVerticalSpace(30),
                  RoundedButton(
                    title: 'Login',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
 */
    );
  }

  Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: containerSize.value,
        decoration: BoxDecoration(
            boxShadow: blurShadow,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
            color: white),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: !isLogin
              ? null
              : () {
                  animationController!.forward();

                  setState(() {
                    isLogin = !isLogin;
                  });
                },
          child: isLogin
              ? const Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: blueLight, fontSize: 18),
                )
              : null,
        ),
      ),
    );
  }
}
  /* Widget buildRegisterContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
          color: blueLight,
        ),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
          },
        ),
      ),
    );
  } */
