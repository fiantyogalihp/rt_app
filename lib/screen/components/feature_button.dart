import 'package:flutter/material.dart';

import '../../constants.dart';

class FeatureButton extends StatelessWidget {
  final String background;
  const FeatureButton({Key? key, required this.background}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                background,
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Icon(Icons.location_on),
                Text('Izin Surat',
                    style: TextStyle(fontSize: 20, fontWeight: bold))
              ],
            ),
          ),
        ));
  }
}
