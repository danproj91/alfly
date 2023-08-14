import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

class SingInButton extends StatelessWidget {
  const SingInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sing_in');
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Palette.ourBlue,
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 254, 28),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: const Text(
                        'Iniciar seción',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Palette.ourYellow,
                        ),
                      ),
                    );
  }
}
