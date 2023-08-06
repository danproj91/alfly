import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class Verification_Code extends StatefulWidget {
  /*final bool isDriverRoll;
  const Verification_Code(
    this.isDriverRoll,
  );

  bool get IsDriver {
    return isDriverRoll;
  }*/

  @override
  _Verification_CodeState createState() => _Verification_CodeState();
}

class _Verification_CodeState extends State<Verification_Code> {
  @override
  Widget build(BuildContext context) {
    // final bool isNavBarDriver=false;
    // final bool isVerificatioCode= true;
    return Scaffold(
        body: Stack(children: [
      
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
                      decoration: BoxDecoration(
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
                                Navigator.pushNamed(context, 'sing_in');
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Palette.ourBlue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 5, 10, 0),
                      child: const Text(
                        'Código de verificación ',
                        style: TextStyle(
                            color: Palette.ourBlue,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    
                  ],
                ),
              ),
            )),
      Positioned(
          top: 150,
          right: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Text(
                              "Ingrese su código OTP aquí",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                color: Palette.ourBlue,
                              ),
                            ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(true, false),
                      _textFieldOTP(false, false),
                      _textFieldOTP(false, false),
                      _textFieldOTP(false, true),
                    ]),
                const SizedBox(
                  height: 40,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Probar la verificación por correo",
                      style: TextStyle(
                          color: Palette.ourBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    /* if (widget.isDriverRoll) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>LegalDocuments(isNavBarDriver,isVerificatioCode)));
                    } else {*/
                      Navigator.pushNamed(context, 'home');
                    /*}*/
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Palette.ourBlue,
                    fixedSize: Size(250, 35),
                  ),
                  child: const Text(
                    'Verificar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Palette.ourYellow,
                        fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "Se le ha enviado por un SMS un código de 4 dígitos a su teléfono",
                      style: TextStyle(
                          color: Palette.ourHintText,
                          fontStyle: FontStyle.italic,
                          fontSize: 15),
                    )),
              ],
            ),
          ))
    ]));
  }

  _textFieldOTP(bool first, bool last) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Palette.ourBlue),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
