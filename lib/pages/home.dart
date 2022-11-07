import "package:flutter/material.dart";
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);

    return Scaffold(
      //! Drawer
      drawer: const AppDrawer(),

      //! AppBar
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "Catalog App",
        ),
      ),

      //! Body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
    );
  }
}
