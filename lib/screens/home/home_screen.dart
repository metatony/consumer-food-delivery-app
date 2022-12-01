import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/demoData.dart';

import '../../componets/image_carousel.dart';
import '../../componets/restaurants_info_medium_card.dart';
import '../../componets/section_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Center(
              child: Column(
                children: [
                  Text(
                    'DELIVERY TO',
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kActiveColor),
                  ),
                  Text(
                    'San Franscisco',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Filter',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTile(
                title: 'Featured Partners',
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoTag(
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      rating: demoMediumCardData[index]['rating'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset("assets/images/Banner.png"),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTile(
                title: 'Best pick',
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoTag(
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      rating: demoMediumCardData[index]['rating'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
