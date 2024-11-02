import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/homepage/widgets/app_bar.dart';
import 'package:job_app_ui/screens/homepage/widgets/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 10),
              const Text(
                "Good Morning Alex",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
              const SizedBox(height: 10),
              const Text("Find Your\nCreative Job",
                  style: TextStyle(
                    fontSize: 32,
                    height: 0.9,
                    fontWeight: FontWeight.bold,
                  )),
              const SizedBox(height: 10),
              CustomSearchBar(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

