import 'package:flutter/material.dart';
import 'package:teyvat_item_tracker_mobile/screens/menu.dart';
import 'package:teyvat_item_tracker_mobile/screens/form.dart';
import 'package:teyvat_item_tracker_mobile/screens/show_items.dart';

class RightDrawer extends StatelessWidget {
  const RightDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(
              color: Color(0xFF4477CE),
            ),
            child: Column(
              children: [
                Text(
                  'Teyvat Item Tracker',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF35155D),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat semua item-item mu di sini!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF35155D),
                      fontWeight: FontWeight.normal,
                    ),
                ),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              /*
              Buatlah routing ke ShopFormPage di sini,
              setelah halaman ShopFormPage sudah dibuat.
              */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopFormPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              /*
              Buatlah routing ke ShopFormPage di sini,
              setelah halaman ShopFormPage sudah dibuat.
              */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowItemsPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}