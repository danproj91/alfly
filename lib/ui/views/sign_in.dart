import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => SingInState();
}

class SingInState extends State<SingIn> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(children: [
        const Background(),
        const SlideTop(),
        Positioned(
            top: 90,
            right: 0,
            left: 0,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                  //height: MediaQuery.of(context).size.height * 0.6,
                  //width: MediaQuery.of(context).size.width * 0.6,
                  child: Image.asset(
                "images/logo_init v2 ss.png",
              )),
            ])),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Palette.ourBlue),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                    color: Palette.ourWhite,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.ourWhite),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.ourWhite),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    contentPadding: const EdgeInsets.all(8),
                    hintText: "Usuario o Teléfono",
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Palette.ourHintText),
                    suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: const Icon(
                          CupertinoIcons.clear_circled_solid,
                          color: Palette.ourWhite,
                          size: 20,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.33,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Palette.ourWhite,
                  // borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LargeBlueButton('verifCode','Iniciar sesión'),
                    SizedBox(
                      height: 30,
                    ),
                    WithThisCellButton()
                  ],
                ),
              ),
            ],
          ),
        ),
        const SlideBottom()
      ]),
    ]));
  }
}
