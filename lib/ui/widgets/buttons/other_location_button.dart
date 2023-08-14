import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class OtherLocationButton extends StatelessWidget {
  const OtherLocationButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const AddLocationDialog());
        //Navigator.pushNamed(context, '');
      },
      style: TextButton.styleFrom(
        backgroundColor: Palette.ourBlue,
        fixedSize: Size(MediaQuery.of(context).size.width - 90, 45),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: const Text(
        'Otra dirección',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Palette.ourYellow,
        ),
      ),
    );
  }
}
