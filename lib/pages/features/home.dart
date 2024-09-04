import 'dart:ui';

import 'package:flutter/material.dart';

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
                      width: 40, // Diameter of the circle
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey
                            .withOpacity(0.2), // Background color of the circle
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.notifications_none_outlined,
                          size: 22,
                        ),
                        splashRadius: 30, // Set the splash radius
                        color: Colors.black, // Icon color
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/beaches/chandipur-beach-odisha.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                height: 350,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(30), // Circular shape
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 10, sigmaY: 10), // Glassmorphism effect
                          child: Container(
                            width: 60, // Diameter of the circle
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                  0.2), // Semi-transparent background color
                              borderRadius:
                                  BorderRadius.circular(20), // Circular shape
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_outline_rounded,
                                size: 22,
                              ),
                              splashRadius: 30, // Set the splash radius
                              color: Colors.white, // Icon color
                              onPressed: () {
                                // Your onPressed functionality
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10, // Extend the positioned widget to full width
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Chandipur Beach',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Odisha',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_outward_rounded,
                                    size: 28,
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
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/beaches/varkala-beach-kerala.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                height: 350,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(30), // Circular shape
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 10, sigmaY: 10), // Glassmorphism effect
                          child: Container(
                            width: 60, // Diameter of the circle
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                  0.2), // Semi-transparent background color
                              borderRadius:
                                  BorderRadius.circular(20), // Circular shape
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_outline_rounded,
                                size: 22,
                              ),
                              splashRadius: 30, // Set the splash radius
                              color: Colors.white, // Icon color
                              onPressed: () {
                                // Your onPressed functionality
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10, // Extend the positioned widget to full width
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Varkala Beach',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Kerala',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_outward_rounded,
                                    size: 28,
                                  ),
                                  splashRadius: 30,
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/beaches/palolem-beach-goa.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                ),
                height: 350,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 10,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(30), // Circular shape
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                              sigmaX: 10, sigmaY: 10), // Glassmorphism effect
                          child: Container(
                            width: 60, // Diameter of the circle
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(
                                  0.2), // Semi-transparent background color
                              borderRadius:
                                  BorderRadius.circular(20), // Circular shape
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.favorite_outline_rounded,
                                size: 22,
                              ),
                              splashRadius: 30, // Set the splash radius
                              color: Colors.white, // Icon color
                              onPressed: () {
                                // Your onPressed functionality
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10, // Extend the positioned widget to full width
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Palolem Beach',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Goa',
                                      style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  // Container(
                                  //   height: 28,
                                  //   decoration: BoxDecoration(
                                  //     color: Colors.pink.shade100,
                                  //     borderRadius: BorderRadius.circular(30),
                                  //   ),
                                  //   child: Padding(
                                  //     padding: const EdgeInsets.symmetric(
                                  //         vertical: 1.0, horizontal: 6),
                                  //     child: TextButton.icon(
                                  //       onPressed: () {},
                                  //       label: Text(
                                  //         "Favorite",
                                  //         style: TextStyle(
                                  //           color: Theme.of(context)
                                  //               .colorScheme
                                  //               .primary,
                                  //           fontSize: 12,
                                  //           fontWeight: FontWeight.w400,
                                  //         ),
                                  //       ),
                                  //       icon: Icon(
                                  //         Icons.favorite_outline_rounded,
                                  //         color: Colors.pink,
                                  //         size: 14,
                                  //       ),
                                  //       style: ButtonStyle(
                                  //         padding: WidgetStatePropertyAll(
                                  //           EdgeInsets.all(0),
                                  //         ),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_outward_rounded,
                                    size: 28,
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
