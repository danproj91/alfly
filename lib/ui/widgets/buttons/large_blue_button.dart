import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class LargeBlueButton extends StatelessWidget {
  const LargeBlueButton(
    this.textAddres,
    this.textButton,
  );
  final String textButton;
  final String textAddres;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if ((textAddres != 'verifCode')&&(textAddres != 'addLocation')) {
          Navigator.pushNamed(context, textAddres);
        } else if (textAddres == 'verifCode') {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const VerificationCodeDialog());
        } else if (textAddres == 'addLocation') {
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const AddLocationDialog());
        }
        //Navigator.pushNamed(context, 'verification_code');
      },
      style: TextButton.styleFrom(
        backgroundColor: Palette.ourBlue,
        fixedSize: Size(MediaQuery.of(context).size.width - 90, 50),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Palette.ourYellow,
        ),
      ),
    );
  }
}
