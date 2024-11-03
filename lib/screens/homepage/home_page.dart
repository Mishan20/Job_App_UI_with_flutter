import 'package:flutter/material.dart';
import 'package:job_app_ui/screens/homepage/widgets/app_bar.dart';
import 'package:job_app_ui/screens/homepage/widgets/job_cart.dart';
import 'package:job_app_ui/screens/homepage/widgets/recent_column.dart';
import 'package:job_app_ui/screens/homepage/widgets/search_bar.dart';
import 'package:job_app_ui/screens/homepage/widgets/topic_bar.dart';
import 'package:job_app_ui/services/get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
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
                const SizedBox(
                  height: 15,
                ),
                CustomTopicBar(
                  tital: 'Popular Jobs',
                  subTital: 'Show all',
                ),
                const SizedBox(height: 15),
                JobCarts(data: data, size: size),
                const SizedBox(height: 15),
                CustomTopicBar(
                  tital: 'Recent Jobs',
                  subTital: 'Show all',
                ),
                const SizedBox(height: 15),
                RecentColumn(data: data)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
