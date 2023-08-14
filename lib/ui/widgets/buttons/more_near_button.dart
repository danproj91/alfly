import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class MoreNearButton extends StatelessWidget {
  const MoreNearButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Palette.ourWhite,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width - 250, 35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: const Text(
                      'Más cercano',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Palette.ourBlue,
                      ),
                    ),
                  );
  }
}
