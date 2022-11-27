import 'package:flutter/material.dart';
import 'package:food_ui_kit/constants.dart';
import 'package:food_ui_kit/demoData.dart';

import '../../componets/image_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
              child: SectionTile(),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTile extends StatelessWidget {
  const SectionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Featured Partners',
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(primary: kActiveColor),
          child: Text('See all'),
        )
      ],
    );
  }
}
