import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class ShortBlueButton extends StatelessWidget {
  const ShortBlueButton(
    this.textAddres,
    this.textButton,
  );
  final String textButton;
  final String textAddres;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (textAddres == '') {
          Navigator.of(context).pop();
        } else {
          Navigator.pushNamed(context, textAddres);
        }
      },
      style: TextButton.styleFrom(
        backgroundColor: Palette.ourBlue,
        fixedSize: Size(MediaQuery.of(context).size.width - 265, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Palette.ourYellow,
        ),
      ),
    );
  }
}
