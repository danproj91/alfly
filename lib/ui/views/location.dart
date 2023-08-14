import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  int? auxVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(children: [
        Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/header_style.png"),
                  fit: BoxFit.fill,
                ),
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
                      'Ubicación',
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
            top: 120,
            right: 0,
            left: 0,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: RadioListTile(
                      value: 1,
                      groupValue: auxVal,
                      onChanged: (valAux) {
                        setState(() {
                          auxVal = valAux;
                        });
                      },
                      activeColor: Palette.ourYellow,
                      title: const Text(
                        'Dirección actual',
                        style: TextStyle(
                            color: Palette.ourHintText,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: const Text(
                        '2CVC+V64, Calle 93, Matanzas, Cuba ',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: RadioListTile(
                      value: 2,
                      groupValue: auxVal,
                      onChanged: (valAux) {
                        setState(() {
                          auxVal = valAux;
                        });
                      },
                      activeColor: Palette.ourYellow,
                      title: const Text(
                        'Casa de Lauren',
                        style: TextStyle(
                            color: Palette.ourHintText,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: const Text(
                        'Calle Medio #29040 entre Milanés y Contreras ',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 10,
                    margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: RadioListTile(
                      value: 3,
                      groupValue: auxVal,
                      onChanged: (valAux) {
                        setState(() {
                          auxVal = valAux;
                        });
                      },
                      activeColor: Palette.ourYellow,
                      title: const Text(
                        'Trabajo',
                        style: TextStyle(
                            color: Palette.ourHintText,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      subtitle: const Text(
                        'Calle Medio #29040 entre Milanés y Contreras',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                  )
                ],
              ),
            )),
        const Positioned(
            right: 20, left: 20, bottom: 55, child: OtherLocationButton()),
        const SlideBottom(),
      ])
    ]));
  }
}
