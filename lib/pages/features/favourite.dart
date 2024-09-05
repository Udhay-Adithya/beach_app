import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../componenets/beach_tag.dart';
import '../../componenets/glass_heart.dart';
import '../../providers/user_provider.dart';

class Favourite extends ConsumerStatefulWidget {
  const Favourite({super.key});

  @override
  ConsumerState<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends ConsumerState<Favourite> {
  @override
  Widget build(BuildContext context) {
    final userNotifier = ref.watch(userProvider.notifier);
    final user = ref.watch(userProvider);

    // Display loading state if user data is still being loaded
    if (userNotifier.isLoading || user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(), // Loading indicator
        ),
      );
    }

    log("$user");
    final favoritedBeaches = user.favoritedBeaches;

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              expandedTitleScale: 1.5,
              titlePadding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Your\nPersonal Picks",
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
                          Icons.beach_access,
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
          if (favoritedBeaches == null || favoritedBeaches.isEmpty)
            SliverFillRemaining(
              child: Center(
                child: Text(
                  "You haven't added any beaches yet.\nFind your perfect spot and\nfavorite it!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final beach = favoritedBeaches[index];
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
                          Positioned(
                            top: 10,
                            right: 10,
                            child: GlassHeart(beach),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            right: 10,
                            child: BeachTag(beach),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: favoritedBeaches.length,
              ),
            ),
        ],
      ),
    );
  }
}
