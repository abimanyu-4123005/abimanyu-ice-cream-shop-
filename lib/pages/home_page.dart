import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Kedai Ice Cream'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/menu'),
            child: const Text('Menu', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/order'),
            child: const Text('Pesan', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      backgroundColor: Colors.pink[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Selamat Datang di Kedai es cream! 🍦',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Nikmati berbagai rasa es krim segar setiap hari!',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                onPressed: () => Navigator.pushNamed(context, '/menu'),
                child: const Text(
                  'Lihat Menu ',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
