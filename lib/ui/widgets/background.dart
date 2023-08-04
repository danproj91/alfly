import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.all(5),
              //height: 620,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/startonboarding_forblue.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ));
  }
}
