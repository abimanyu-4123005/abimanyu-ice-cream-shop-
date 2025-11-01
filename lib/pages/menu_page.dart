import 'package:flutter/material.dart';
import '../widgets/ice_cream_card.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final iceCreams = [
      {
        'name': 'Vanilla',
        'color': Colors.yellow,
        'image': 'https://pin.it/1L0GAf6wC',
      },
      {
        'name': 'Cokelat',
        'color': Colors.brown,
        'image': 'https://https://pin.it/gHldN3kJR',
      },
      {
        'name': 'Strawberry',
        'color': Colors.pink,
        'image': 'https://https://pin.it/gHldN3kJR',
      },
      {
        'name': 'Mint',
        'color': Colors.teal,
        'image': 'https://pin.it/gHldN3kJR',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(' Menu Es Krim'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.9,
        ),
        itemCount: iceCreams.length,
        itemBuilder: (context, index) {
          final item = iceCreams[index];
          return IceCreamCard(
            flavor: item['name'] as String,
            color: item['color'] as Color,
            imageUrl: item['image'] as String,
          );
        },
      ),
    );
  }
}
