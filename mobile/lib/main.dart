import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables (optional in dev)
  try {
    await dotenv.load(fileName: '.env');
  } catch (_) {
    // .env not present — use defaults or --dart-define
  }

  runApp(const VoltPassApp());
}
