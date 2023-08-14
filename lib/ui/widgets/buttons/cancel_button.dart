import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      style: TextButton.styleFrom(
        backgroundColor: Palette.ourBlue,
        fixedSize: Size(MediaQuery.of(context).size.width - 265, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
      child: const Text(
        'Cancelar',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Palette.ourYellow,
        ),
      ),
    );
  }
}