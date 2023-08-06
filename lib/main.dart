import 'package:flutter/material.dart';
import 'package:alfly/ui/helpers/export.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "init_view",
        routes: {
          'init_view': ((context) => const InitViewScreen()),
          'home': ((context) => const Home()),
          'sing_in': ((context) => const SingIn()),
          'sing_up': ((context) => const SingUp()),
          'verification_code': ((context) => Verification_Code()),
        });
  }
}
