import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.75,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search For Jobs",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 55,
          width: 65,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.search, color: Colors.white),
        ),
      ],
    );
  }
}
