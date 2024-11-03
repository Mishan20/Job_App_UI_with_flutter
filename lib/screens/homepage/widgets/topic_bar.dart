// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomTopicBar extends StatelessWidget {
  String tital;
  String subTital;
  CustomTopicBar({
    super.key,
    required this.tital,
    required this.subTital,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(tital,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Text(subTital,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16)),
      ],
    );
  }
}
