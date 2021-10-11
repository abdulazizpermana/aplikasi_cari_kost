import 'package:aplikasi_cari_kost/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_cari_kost/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(),
    );
  }
}
