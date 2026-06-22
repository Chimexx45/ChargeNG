import 'package:flutter/material.dart';

import 'config/theme.dart';
import 'screens/home_screen.dart';

class VoltPassApp extends StatelessWidget {
  const VoltPassApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VoltPassNG',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: const HomeScreen(),
    );
  }
}
