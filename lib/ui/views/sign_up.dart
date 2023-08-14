import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';
import 'package:flutter/cupertino.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => const ReferenceCodeDialog());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(children: [
        const Background(),
        //const SlideTop(),

        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Palette.ourYellow.withOpacity(0.7),
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                            bottomEnd: Radius.circular(10),
                            topEnd: Radius.circular(10)),
                        color: Palette.ourWhite,
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, 'home');
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Palette.ourBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      'Insertar Datos',
                      style: TextStyle(
                          color: Palette.ourBlue,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.08,
                    )
                  ],
                ),
              ),
            )),

        Positioned(
          top: 60,
          right: 20,
          left: 20,
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Nombre",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Palette.ourBlue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                      color: Palette.ourWhite,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.ourWhite),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.ourWhite),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      contentPadding: const EdgeInsets.all(10),
                      hintText: "XXXXXXXXX",
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
                  height: 10,
                ),
                const Text(
                  "Apellidos",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Palette.ourBlue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                      color: Palette.ourWhite,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.ourWhite),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.ourWhite),
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      contentPadding: const EdgeInsets.all(10),
                      hintText: "XXXXXXXXX",
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
                  height: 10,
                ),
                const Text(
                  "Teléfono",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Palette.ourBlue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: const BoxDecoration(
                      color: Palette.ourWhite,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                        child: const Text(
                          '+53  ',
                          style: TextStyle(
                            color: Palette.ourBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.ourWhite),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Palette.ourWhite),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            contentPadding: const EdgeInsets.all(0),
                            hintText: "XXXXXXXXX",
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
              ],
            ),
          ),
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: 10,
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Palette.ourWhite,
                // borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Género",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Palette.ourBlue),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: const BoxDecoration(
                                color: Palette.ourWhite,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.ourWhite),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.ourWhite),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: "Seleccione",
                                hintStyle: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Palette.ourHintText,
                                    fontStyle: FontStyle.italic),
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
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Fecha de Nacimiento",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Palette.ourBlue),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.45,
                            decoration: const BoxDecoration(
                                color: Palette.ourWhite,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.ourWhite),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Palette.ourWhite),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10.0))),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: "14/02/2004",
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
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 5),
                        ]),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Código de referencia",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Palette.ourBlue),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: const BoxDecoration(
                                  color: Palette.ourWhite,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Palette.ourWhite),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Palette.ourWhite),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0))),
                                  contentPadding: const EdgeInsets.all(10),
                                  hintText: "XXXXXXXXX",
                                  hintStyle: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Palette.ourHintText,
                                      fontStyle: FontStyle.italic),
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
                          ],
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.copy,
                              color: Palette.ourBlue,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const SingUpLargeButton(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: "Al iniciar, aceptas nuestros",
                        style: TextStyle(
                          color: Palette.ourHintText,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'information');
                      },
                      child: const Text(
                        " Terminos y Condiciones",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Palette.ourLinkText,
                            fontSize: 16),
                      )),
                ],
              ),
            )),
        const SlideBottom(),
      ])
    ]));
  }
}
