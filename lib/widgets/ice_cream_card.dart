import 'package:flutter/material.dart';

class IceCreamCard extends StatelessWidget {
  final String flavor;
  final Color color;
  final String imageUrl;

  const IceCreamCard({
    super.key,
    required this.flavor,
    required this.color,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageUrl,
              height: 80,
              errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.icecream, size: 60, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            Text(
              flavor,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
