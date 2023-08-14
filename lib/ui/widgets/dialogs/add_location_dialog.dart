import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class AddLocationDialog extends StatefulWidget {
  const AddLocationDialog({super.key});

  @override
  State<AddLocationDialog> createState() => _AddLocationDialogState();
}

class _AddLocationDialogState extends State<AddLocationDialog> {
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      alignment: Alignment.center,
      title: const Text(
        "Otra dirección",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 27, fontWeight: FontWeight.bold, color: Palette.ourBlue),
      ),
      contentPadding: const EdgeInsets.all(10),
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: Text(
            'Dirección',
            style: TextStyle(
                fontSize: 16,
                color: Palette.ourBlue,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.8,
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
              hintText: "Escriba la dirección ...",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Palette.ourHintText),
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
            CancelButton(),
            SizedBox(
              width: 10,
            ),
            AcceptButton(),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
