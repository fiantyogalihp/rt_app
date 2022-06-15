import 'package:flutter/material.dart';
import 'package:rt_app/constants.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      backgroundColor: white,
      body: const SizedBox(
        child: Center(child: Text('Dashboard Page !!')),
      ),
    );
  }
}
