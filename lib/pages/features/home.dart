import 'package:flutter/material.dart';

import '../../componenets/beach_tag.dart';
import '../../componenets/glass_heart.dart';
import '../../data/beach_data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your\nfavourite place",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.withOpacity(0.2),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          size: 22,
                        ),
                        splashRadius: 30,
                        color: Colors.black,
                        onPressed: () {
                          // Your onPressed functionality
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final beach = beachData[index]; // Get each beach data

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(beach['image']!), // Beach image
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    height: 350,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 10,
                          right: 10,
                          child: GlassHeart(),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          right: 10,
                          child: BeachTag(beach['name']!, beach['location']!),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: beachData.length, // Number of beaches to render
            ),
          ),
        ],
      ),
    );
  }
}
