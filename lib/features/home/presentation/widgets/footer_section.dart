import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        children: [
          Text('جميع الحقوق محفوظة © 2026', style: TextStyle(color: Colors.black54)),
          SizedBox(height: 5),
          Text('تم التطوير بواسطة محمد العطل لتلبية متطلبات التدريب الميداني', style: TextStyle(fontSize: 12, color: Colors.black45)),
        ],
      ),
    );
  }
}