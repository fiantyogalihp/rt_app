import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Future<dynamic> errorMessage(
    String title, String desc, BuildContext context) async {
  return await showCupertinoDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Empty $title'),
          content: Text(desc),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      });
}
