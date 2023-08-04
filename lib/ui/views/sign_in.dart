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
            top: 0,
            right: 0,
            left: 0,
            child: SizedBox(
                //height: 620,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Image.asset(
                        "images/logo_init v2 ss.png",
                      )),
                ]))),
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
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
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
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
              )
            ],
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: 10,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.33,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Palette.ourWhite,
                // borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'verification_code');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Palette.ourBlue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 90, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    child: const Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Palette.ourYellow,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone_outlined, color: Palette.ourBlue),
                          const SizedBox(
                            width: 10,
                          ),
                          Text("Con este número de móvil",
                              style: TextStyle(
                                  fontSize: 16, color: Palette.ourBlue)),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, 'sing_up');
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(10),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width - 90, 60),
                          textStyle: TextStyle(
                            fontSize: 16,
                          ),
                          foregroundColor: Palette.ourBlack,
                          shadowColor: Colors.black,
                          //side: BorderSide(color: Palette.ourBlue, width: 2),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0))
                          //shape: StadiumBorder(),
                          )),
                ],
              ),
            )),
        const SlideBottom()
      ]),
    ]));
  }
}
