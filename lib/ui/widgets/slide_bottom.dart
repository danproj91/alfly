import 'package:alfly/ui/config/palette.dart';
import 'package:flutter/material.dart';

class SlideBottom extends StatelessWidget {
  const SlideBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          //height: 620,
          height: MediaQuery.of(context).size.height * 0.03,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Palette.ourBlue,
            // borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.005,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: const BoxDecoration(
                  color: Palette.ourWhite,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              )
            ],
          ),
        ));
  }
}
