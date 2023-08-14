import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class SingUpButton extends StatelessWidget {
  const SingUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sing_up');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Palette.ourWhite,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 260, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Palette.ourBlue,
                        ),
                      ),
                    );
  }
}
