import 'package:flutter/material.dart';
import 'package:smart_ahwa/ahwa_app.dart';
import 'package:smart_ahwa/core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();
  runApp(const AhwaApp());
}
