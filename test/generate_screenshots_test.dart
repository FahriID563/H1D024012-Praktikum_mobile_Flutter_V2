import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:belajar_flutter/login_page.dart';
import 'package:belajar_flutter/home_page.dart';
import 'package:belajar_flutter/about_page.dart';
import 'package:belajar_flutter/ui/produk_form.dart';
import 'package:belajar_flutter/ui/produk_detail.dart';
import 'package:belajar_flutter/ui/produk_page.dart';

void main() {
  testWidgets('Generate Screenshots', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(1080, 1920);
    tester.view.devicePixelRatio = 2.0;

    await captureWidget(tester, const LoginPage(), 'docs/screenshots/login.png');
    await captureWidget(tester, const HomePage(), 'docs/screenshots/home.png');
    await captureWidget(tester, const AboutPage(), 'docs/screenshots/about.png');
    await captureWidget(tester, const ProdukForm(), 'docs/screenshots/produk_form.png');
    await captureWidget(
      tester,
      const ProdukDetail(
        kodeProduk: 'BRG001',
        namaProduk: 'Laptop Gaming',
        hargaProduk: 15000000,
      ),
      'docs/screenshots/produk_detail.png',
    );
    await captureWidget(tester, const ProdukPage(), 'docs/screenshots/produk_page.png');
  });
}

Future<void> captureWidget(WidgetTester tester, Widget widget, String path) async {
  GlobalKey key = GlobalKey();
  await tester.pumpWidget(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: RepaintBoundary(
        key: key,
        child: widget,
      ),
    ),
  );
  await tester.pumpAndSettle();

  RenderRepaintBoundary boundary = key.currentContext!.findRenderObject() as RenderRepaintBoundary;
  ui.Image image = await boundary.toImage(pixelRatio: 2.0);
  var byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  var buffer = byteData!.buffer.asUint8List();

  File file = File(path);
  file.parent.createSync(recursive: true);
  file.writeAsBytesSync(buffer);
}
