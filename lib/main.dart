
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF7FF),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 35),
              Text(
                'Malang',
                style: TextStyle(fontSize: 28),
              ),
              SizedBox(height: 55),
              Text(
                '25°',
                style: TextStyle(
                  fontSize: 76,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ItemCuaca(
                      hari: 'Minggu',
                      ikon: Icons.sunny,
                      suhu: '20°C',
                      warna: Colors.black,
                    ),
                    ItemCuaca(
                      hari: 'Senin',
                      ikon: Icons.cloudy_snowing,
                      suhu: '23°C',
                      warna: Colors.black,
                    ),
                    ItemCuaca(
                      hari: 'Selasa',
                      ikon: Icons.cloud,
                      suhu: '22°C',
                      warna: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemCuaca extends StatelessWidget {
  final String hari;
  final IconData ikon;
  final String suhu;
  final Color warna;

  const ItemCuaca({
    super.key,
    required this.hari,
    required this.ikon,
    required this.suhu,
    required this.warna,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(hari, style: const TextStyle(fontSize: 12)),
        const SizedBox(height: 12),
        Icon(ikon, size: 27, color: warna),
        const SizedBox(height: 8),
        Text(suhu, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
