import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class ReferenceCodeDialog extends StatelessWidget {
  const ReferenceCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      alignment: Alignment.center,
      title: const Text(
        "Código de referencia",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 27, fontWeight: FontWeight.bold, color: Palette.ourBlue),
      ),
      contentPadding: const EdgeInsets.all(10),
      children: [
        
        const Text(
            '¿Tiene un código de referencia?',
            textAlign:TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                color: Palette.ourBlue,
                fontWeight: FontWeight.normal),
          ),
        
        Center(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width * 0.40,
            decoration: const BoxDecoration(
                color: Palette.ourWhite,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const TextField(
              decoration: InputDecoration(
        
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.ourWhite),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Palette.ourWhite),
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                contentPadding: EdgeInsets.all(8),
                hintText: "x x x x x x x x x x",
                hintStyle: TextStyle(
        
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Palette.ourHintText),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShortBlueButton('','No tengo'),
            SizedBox(
              width: 10,
            ),
            ShortBlueButton('','Aceptar'),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
