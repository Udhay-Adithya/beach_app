import 'package:beach_app/componenets/my_button.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    color: Colors.pinkAccent,
                    height:
                        200, // Half of the total height for the pink section
                  ),
                  const Positioned(
                    bottom:
                        40, // Puts the avatar at the boundary of pink and white
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.black, // Outer circle color
                      child: CircleAvatar(
                        radius: 58,
                        backgroundColor:
                            Colors.pink, // Replace with your avatar image
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: MyButton("Logout", onTap: () {})),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 40,
              color: Colors.green,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 40,
              color: Colors.blueAccent,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: 40,
              color: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
