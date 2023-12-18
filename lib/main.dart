import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix_admin/screens/home_screen.dart';
import 'providers/index_transition_provider.dart';

void main() {
  runApp(const RenfixAdmin());
}

class RenfixAdmin extends StatelessWidget {
  const RenfixAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ScreenTransitionProvider>(
          create: (context) => ScreenTransitionProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
