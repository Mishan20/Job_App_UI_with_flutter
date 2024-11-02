import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade400),
          ),
          child: const Icon(Icons.menu),
        ),
        const Text("Creative Jobs",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade400),
              image: const DecorationImage(
                  image: NetworkImage(
                "https://img.freepik.com/free-photo/portrait-man-laughing_23-2148859448.jpg",
              ))),
        )
      ],
    );
  }
}