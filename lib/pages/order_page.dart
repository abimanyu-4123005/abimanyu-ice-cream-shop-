import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _formKey = GlobalKey<FormState>();
  String? _nama;
  String? _rasa;

  final _flavors = ['Vanilla', 'Cokelat', 'Strawberry', 'Mint'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🛍️ Pesan Es Krim'),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama Pemesan',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => value!.isEmpty ? 'Masukkan nama Anda' : null,
                onSaved: (value) => _nama = value,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'Pilih Rasa',
                  border: OutlineInputBorder(),
                ),
                items: _flavors
                    .map((rasa) => DropdownMenuItem(value: rasa, child: Text(rasa)))
                    .toList(),
                onChanged: (value) => _rasa = value,
                validator: (value) => value == null ? 'Pilih rasa es krim' : null,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Terima kasih $_nama! Pesanan $_rasa sedang diproses 🍦'),
                      ),
                    );
                  }
                },
                child: const Text(
                  'Kirim Pesanan',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
