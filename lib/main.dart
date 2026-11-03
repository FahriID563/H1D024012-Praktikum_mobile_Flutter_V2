import 'package:flutter/material.dart';
import 'package:belajar_flutter/hello_world.dart';
import 'package:belajar_flutter/column_widget.dart';
import 'package:belajar_flutter/row_widget.dart';
import 'package:belajar_flutter/ui/produk_form.dart';
import 'package:belajar_flutter/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MainMenuPage(),
    );
  }
}

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modul 2 Pemrograman Mobile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: const Text('6. Hello World'),
              subtitle: const Text('StatelessWidget dasar (Scaffold, AppBar, Text)'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HelloWorld()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('8. Widget Column'),
              subtitle: const Text('Menampilkan widget secara vertikal'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ColumnWidget()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('9. Widget Row'),
              subtitle: const Text('Menampilkan widget secara horizontal'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RowWidget()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('10. Form & Detail Produk'),
              subtitle: const Text('StatefulWidget Form Produk & Detail Produk'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProdukForm()),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('11. ListView Produk'),
              subtitle: const Text('Menampilkan list data produk dengan Card & ListTile'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProdukPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
