import 'package:flutter/material.dart';
import 'package:teyvat_item_tracker_mobile/screens/menu.dart';
import 'package:teyvat_item_tracker_mobile/widgets/drawer.dart';
import 'dart:math' as math;

class ShowItemsPage extends StatefulWidget {
    const ShowItemsPage({super.key});

    @override
    State<ShowItemsPage> createState() => ShowItemsPageState();
}

class ShowItemsPageState extends State<ShowItemsPage> {
    static List<Item> database = <Item>[
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Teyvat Item Tracker',
              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF35155D))),
          backgroundColor: const Color(0xFF4477CE)),
      endDrawer: const RightDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // judul
              const Padding(
                padding: EdgeInsets.only(top: 40.0, bottom: 0.0),
                child: Text(
                  'Lihat Item',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF35155D)
                  ),
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: database.map((Item item) {
                  return ItemCard(item);
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Container(
            decoration: const BoxDecoration(
                color: Color(0xFF4477CE),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Text(
                item.name,
                
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Color(0xFF35155D)
                ),
                
              ),
              Text("Jumlah: ${item.amount}", style: const TextStyle(color: Color(0xFF35155D), fontSize: 18)),
              Text("Harga: ${item.price}", style: const TextStyle(color: Color(0xFF35155D), fontSize: 18)),
              Text("Deskripsi: ${item.description}", style: const TextStyle(color: Color(0xFF35155D), fontSize: 18))
            ])));

    //;
  }
}