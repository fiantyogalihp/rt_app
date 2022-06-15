import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

final List<Widget> featureButton = <Widget>[
  ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/1.jpg',
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
          boxShadow: solidShadow,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(),
        ),
      )),
  ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/2.jpg',
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
          boxShadow: solidShadow,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(),
        ),
      )),
  ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/3.jpg',
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
          boxShadow: solidShadow,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(),
        ),
      )),
  ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              'assets/4.jpg',
            ),
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            isAntiAlias: true,
          ),
          boxShadow: solidShadow,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: grey,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(),
        ),
      )),
];

Widget ijc = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    )
  ],
);
