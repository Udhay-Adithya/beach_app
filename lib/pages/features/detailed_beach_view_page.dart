import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import 'bottom_nav_bar.dart';
import 'home.dart';

class DetailedBeachView extends StatefulWidget {
  final Map<String, String>? beachInfo;
  const DetailedBeachView({this.beachInfo, super.key});

  @override
  State<DetailedBeachView> createState() => _DetailedBeachViewState();
}

class _DetailedBeachViewState extends State<DetailedBeachView> {
  final List<Map<String, dynamic>> factors = [
    {
      'icon': Icons.water_drop,
      'label': 'Water Quality',
      'value': '10 CFU/100 mL',
    },
    {
      'icon': Icons.air,
      'label': 'Wind Speed',
      'value': '5 m/s',
    },
    {
      'icon': Icons.waves,
      'label': 'Tidal Patterns',
      'value': '0.5 m',
    },
    {
      'icon': Icons.water,
      'label': 'Wave Height',
      'value': '0.8 m',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
            ),
            backgroundColor: Colors.white,
            expandedHeight: 275,
            elevation: 0,
            pinned: true,
            stretch: true,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30), // Circular shape
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 10, sigmaY: 10), // Glassmorphism effect
                child: Container(
                  width: 60, // Diameter of the circle
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withOpacity(0.2), // Semi-transparent background color
                    borderRadius: BorderRadius.circular(20), // Circular shape
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                    splashRadius: 30, // Set the splash radius
                    color: Colors.white, // Icon color
                    onPressed: () async {
                      Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                          type: PageTransitionType.fade,
                          child: const MyBNB(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    },
                  ),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "${widget.beachInfo!["image"]}",
                fit: BoxFit.cover,
              ),
              stretchModes: const [
                StretchMode.blurBackground,
                StretchMode.zoomBackground,
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: Container(
                height: 32,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Container(
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.beachInfo!["name"]}",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    "${widget.beachInfo!["location"]}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "4.0",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.yellow.shade700,
                          ),
                        ),
                        icon: Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.yellow.shade700,
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.yellow.shade100.withOpacity(0.5),
                          ),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Favourite",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue.shade700,
                          ),
                        ),
                        icon: Icon(
                          Icons.verified,
                          size: 18,
                          color: Colors.blue.shade700,
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.blue.shade100.withOpacity(0.5),
                          ),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Safe",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.green.shade700,
                          ),
                        ),
                        icon: Icon(
                          Icons.check_circle_outlined,
                          size: 18,
                          color: Colors.green.shade700,
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.green.shade100.withOpacity(0.5),
                          ),
                          padding: const WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 4,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Weather",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GridView.count(
                  padding: EdgeInsets.all(8),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 2.5,
                  children: List.generate(factors.length, (index) {
                    return SizedBox(
                      height: 150,
                      width: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.tertiary,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              factors[index]['label'],
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  factors[index]['icon'],
                                  size: 20,
                                  color: Colors.blue,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "${factors[index]['value']}",
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Activities",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
