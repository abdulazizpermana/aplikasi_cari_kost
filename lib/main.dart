import 'package:aplikasi_cari_kost/pages/splash_page.dart';
import 'package:aplikasi_cari_kost/provider/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_cari_kost/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
