import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class VerificationCodeDialog extends StatefulWidget {
  const VerificationCodeDialog({super.key});

  @override
  State<VerificationCodeDialog> createState() => _VerificationCodeDialogState();
}

class _VerificationCodeDialogState extends State<VerificationCodeDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      alignment: Alignment.center,
      title: const Text(
        "Código de verificación",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 27, fontWeight: FontWeight.bold, color: Palette.ourBlue),
      ),
      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      children: [
        const Text(
          "Ingrese su código OTP aquí",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Palette.ourBlue,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _textFieldOTP(true, false),
          _textFieldOTP(false, false),
          _textFieldOTP(false, false),
          _textFieldOTP(false, true),
        ]),
        const SizedBox(
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          child: ElevatedButton(
            onPressed: () {
              /* if (widget.isDriverRoll) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>LegalDocuments(isNavBarDriver,isVerificatioCode)));
                      } else {*/
              Navigator.pushNamed(context, 'home');
              /*}*/
            },
            style: TextButton.styleFrom(
              backgroundColor: Palette.ourBlue,
              fixedSize: const Size(250, 35),
            ),
            child: const Text(
              'Verificar',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Palette.ourYellow,
                  fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text:
                    "Se le ha enviado por un SMS un código de 4 dígitos a su teléfono",
                style: TextStyle(
                    color: Palette.ourHintText,
                    fontStyle: FontStyle.italic,
                    fontSize: 16),
              )),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }

  _textFieldOTP(bool first, bool last) {
    return SizedBox(
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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Palette.ourBlue
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Colors.black12),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 2, color: Palette.ourBlue),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
