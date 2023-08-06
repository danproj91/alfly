import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class InitViewScreen extends StatelessWidget {
  const InitViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(children: [
        const Background(),
        Positioned(
            right: 0,
            left: 0,
            child: SizedBox(
                //height: 620,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Image.asset(
                            "images/logo_init v2.png",
                          )),
                    ]))),
        const SlideTop(),
        const SlideBottom()
      ]),
      const Home()
    ]));
  }
}
