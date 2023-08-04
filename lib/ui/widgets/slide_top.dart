import 'package:alfly/ui/config/palette.dart';
import 'package:flutter/material.dart';

class SlideTop extends StatelessWidget {
  const SlideTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: Container(
            //height: 620,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Palette.ourBlue,
              // borderRadius: BorderRadius.all(Radius.circular(10.0)),
            )));
  }
}
