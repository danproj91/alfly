import 'dart:html';

import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //final _textController = TextEditingController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(children: [
      Stack(children: [
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              //margin: EdgeInsets.all(5),
              //height: 620,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey.shade100),
            )),
        Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.fmd_good_outlined,
                          color: Palette.ourYellow, size: 20),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '2CVC+VC64, Calle 93, Matanzas, Cuba ',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                          color: Palette.ourHintText,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.more_horiz_outlined,
                          color: Palette.ourBlue, size: 20),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined,
                        color: Palette.ourBlue, size: 30),
                    onPressed: () {
                      // ...
                    },
                  ),
                ],
              ),
            )),
        Positioned(
          top: 60,
          right: 18,
          left: 18,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 10),
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/welcome.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sing_in');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Palette.ourWhite,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 254, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: const Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Palette.ourBlue,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sing_up');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Palette.ourWhite,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 260, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Palette.ourBlue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categorías",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Palette.ourBlue),
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined,
                        color: Palette.ourBlue, size: 30),
                    onPressed: () {
                      // ...
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        contentPadding: const EdgeInsets.all(8),
                        hintText: "Buscar comida o restaurante...",
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Palette.ourHintText),
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Palette.ourBlue,
                              size: 25,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Palette.ourBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: IconButton(
                      onPressed: () {
                        // ...
                      },
                      icon: const Icon(
                        CupertinoIcons.slider_horizontal_3,
                      ),
                      color: Palette.ourYellow,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'sing_in');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Palette.ourBlue,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 250, 35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: const Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Palette.ourYellow,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'sing_up');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Palette.ourWhite,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 250, 35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: const Text(
                      'Más cercano',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Palette.ourBlue,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Palette.ourBlue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {
                            // ...
                          },
                          icon: const Icon(
                            CupertinoIcons.rectangle_grid_2x2,
                          ),
                          color: Palette.ourYellow,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Todos',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Palette.ourWhite,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {
                            // ...
                          },
                          icon: const Icon(
                            Icons.local_pizza_outlined,
                          ),
                          color: Palette.ourBlue,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Pizzas',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Palette.ourWhite,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {
                            // ...
                          },
                          icon: const Icon(
                            Icons.coffee_outlined,
                          ),
                          color: Palette.ourBlue,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Café',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Palette.ourWhite,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: IconButton(
                          onPressed: () {
                            // ...
                          },
                          icon: const Icon(
                            Icons.restaurant_menu_rounded,
                          ),
                          color: Palette.ourBlue,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Criolla',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Palette.ourWhite,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/hecho_en_casa.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hecho en casa",
                              style: TextStyle(
                                  color: Palette.ourBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "#Criolla #Cubana #Pizzas #Café",
                              style: TextStyle(
                                  color: Palette.ourHintText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.clock,
                                  color: Palette.ourBlue,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "60 min",
                                  style: TextStyle(
                                      color: Palette.ourBlue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.check_mark_circled_solid,
                                  color: Palette.ourGreen,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Entregas las 24h",
                                  style: TextStyle(
                                      color: Palette.ourGreen,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  color: Palette.ourYellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Palette.ourYellow,
                              size: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Palette.ourWhite,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/da_alicia.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Doña Alicia",
                              style: TextStyle(
                                  color: Palette.ourBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "#Criolla #Cubana #Pizzas #Café",
                              style: TextStyle(
                                  color: Palette.ourHintText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.clock,
                                  color: Palette.ourBlue,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "120 min",
                                  style: TextStyle(
                                      color: Palette.ourBlue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.check_mark_circled_solid,
                                  color: Palette.ourGreen,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Abierto",
                                  style: TextStyle(
                                      color: Palette.ourGreen,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  color: Palette.ourYellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Palette.ourYellow,
                              size: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Palette.ourWhite,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("images/ricardon.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "RicarDón",
                              style: TextStyle(
                                  color: Palette.ourBlue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              "#Criolla #Cubana #Pizzas #Café",
                              style: TextStyle(
                                  color: Palette.ourHintText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.clock,
                                  color: Palette.ourBlue,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "60 min",
                                  style: TextStyle(
                                      color: Palette.ourBlue,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.check_mark_circled_solid,
                                  color: Palette.ourGreen,
                                  size: 10,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Abierto",
                                  style: TextStyle(
                                      color: Palette.ourGreen,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              "4.5",
                              style: TextStyle(
                                  color: Palette.ourYellow,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_rate_rounded,
                              color: Palette.ourYellow,
                              size: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        Positioned(
          bottom: 0,
          child: Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width,
              //padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Center(
                child: FloatingNavbar(

                  backgroundColor: Palette.ourWhite,
                  borderRadius: 25,
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  itemBorderRadius: 25,
                  fontSize: 8,
                  selectedBackgroundColor: Palette.ourYellow,
                  unselectedItemColor: Palette.ourBlue,
                  selectedItemColor: Palette.ourBlue,
                  //elevation: 1,
                  onTap: (int val) => setState(() => _index = val),
                  currentIndex: _index,
                  items: [
                    FloatingNavbarItem(
                        icon: Icons.home_outlined, title: 'Inicio'),
                    FloatingNavbarItem(
                        icon: Icons.note_add_outlined, title: 'Ordenes'),
                    FloatingNavbarItem(
                        icon: Icons.wallet_rounded, title: 'Billetera'),
                    FloatingNavbarItem(
                        icon: Icons.settings_outlined, title: 'Ajustes'),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SlideBottom()
      ])
    ]));
  }
}
