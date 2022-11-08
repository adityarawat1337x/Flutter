import 'dart:convert';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String name = "Aditya";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 1));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((e) => Item.fromMap(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! Drawer
      drawer: const AppDrawer(),

      //! AppBar
      appBar: AppBar(
        // ignore: prefer_const_constructors
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarColor:
              ColorScheme.fromSwatch().primary, // Navigation bar
          // statusBarColor: , // Status bar
        ),
        centerTitle: true,
        elevation: 0.0,
        title: const Text("Catalog App"),
      ),

      //! Body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CatalogModel.items != null && CatalogModel.items.isNotEmpty
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                          header: Container(
                              padding: EdgeInsets.all(5),
                              color: Colors.deepPurple,
                              child: Text(CatalogModel.items[index].name)),
                          footer:
                              Text(CatalogModel.items[index].price.toString()),
                          child:
                              Image.network(CatalogModel.items[index].image)));
                },
              )
            // ListView.builder(
            //     itemCount: CatalogModel.items.length,
            //     itemBuilder: (context, index) {
            //       return ItemWidget(item: CatalogModel.items[index]);
            //     },
            //   )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
