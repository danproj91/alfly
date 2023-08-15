import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class ShortWhiteButton extends StatelessWidget {
  const ShortWhiteButton(
    this.textAddres,
    this.textButton,
  );
  final String textButton;
  final String textAddres;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, textAddres);
      },
      style: TextButton.styleFrom(
        backgroundColor: Palette.ourWhite,
        fixedSize: Size(MediaQuery.of(context).size.width - 260, 28),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Palette.ourBlue,
        ),
      ),
    );
  }
}
