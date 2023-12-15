import 'package:flutter/material.dart';
import 'package:rent_fix_admin/screens/screens.dart';

void main() {
  runApp(const RenfixAdmin());
}

class RenfixAdmin extends StatelessWidget {
  const RenfixAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      // home: const Settings(),
      home: const Dashboard(),
      // home: const Login(),
      //home: const Payment(),
      // home: const Tenants(),
    );
  }
}
