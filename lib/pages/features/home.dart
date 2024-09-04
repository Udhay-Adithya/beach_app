import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // Handle the onTap action for Home
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                // Handle the onTap action for Profile
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                // Handle the onTap action for Settings
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            expandedHeight: 100,
            leading: Builder(builder: (context) {
              return IconButton(
                icon: const Icon(
                  size: 22,
                  Icons.sort,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                ),
                onPressed: () {},
              ),
            ],
            title: Text(
              "My Profile",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            centerTitle: true,
            flexibleSpace: const FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 50,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
