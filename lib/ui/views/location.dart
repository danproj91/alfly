import 'package:alfly/ui/widgets/header_style1.dart';
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
        const HeaderStyle1('Ubicación'),
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
            right: 20, left: 20, bottom: 55, child: LargeBlueButton('addLocation', 'Otra dirección')),
        const SlideBottom(),
      ])
    ]));
  }
}
