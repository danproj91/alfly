import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class HeaderStyle1 extends StatelessWidget {
  const HeaderStyle1(
    
    this.textHeader,
  );
  final String textHeader;

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                            Navigator.of(context).pop();
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
                Text(
                  textHeader,
                  style: const TextStyle(
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
        ));
  }
}
