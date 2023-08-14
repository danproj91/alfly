import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class WithThisCellButton extends StatelessWidget {
  const WithThisCellButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.phone_outlined, color: Palette.ourBlue),
            SizedBox(
              width: 10,
            ),
            Text("Con este número de móvil",
                style: TextStyle(fontSize: 16, color: Palette.ourBlue)),
          ],
        ),
        onPressed: () {
          Navigator.pushNamed(context, 'sing_up');
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(10),
            fixedSize: Size(MediaQuery.of(context).size.width - 90, 60),
            textStyle: const TextStyle(
              fontSize: 16,
            ),
            foregroundColor: Palette.ourBlack,
            shadowColor: Colors.black,
            //side: BorderSide(color: Palette.ourBlue, width: 2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))
            //shape: StadiumBorder(),
            ));
  }
}
