import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        onTap: () {
          // ignore: avoid_print
          print(item.name);
        },
        trailing: Text(
          "${item.price} \$",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
