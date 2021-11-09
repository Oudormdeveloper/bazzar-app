import 'package:badges/badges.dart';
import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cFill,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(CupertinoIcons.search),
          onPressed: () {},
          iconSize: 28,
        ),
        actions: [
          Badge(
            badgeColor: cPrimary,
            position: BadgePosition.topEnd(top: 4, end: 4),
            badgeContent: Text(
              '10',
              style: kBody2Text().copyWith(color: cWhite),
            ),
            child: IconButton(
              onPressed: () {},
              iconSize: 28,
              icon: Icon(
                CupertinoIcons.bell,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SectionSlide(),
            VerticalSpacing(),
            KVPanel(
              color: cWhite,
              padding: EdgeInsets.all(kvDefaultPadding),
              child: Column(
                children: [
                  SectionTitle(
                    title: 'Exclusive deals',
                    onPressed: () {},
                  ),
                  Row(
                    children: [
                      Expanded(child: ProductCard()),
                      HorizontalSpacing(),
                      Expanded(child: ProductCard()),
                    ],
                  )
                ],
              ),
            ),
            VerticalSpacing(),
            KVPanel(
              color: cWhite,
              padding: EdgeInsets.all(kvDefaultPadding),
              child: Column(
                children: [
                  SectionTitle(
                    title: 'Categories',
                    onPressed: () {},
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CategoryCard(
                            title: 'Apparel',
                            icon: iconTshirt,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: cFill,
        borderRadius: BorderRadius.circular(kvBorderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            icon,
            width: 40,
            height: 40,
            color: cPrimary,
          ),
          Text(
            title,
            style: kBody2Text(),
          ),
        ],
      ),
    );
  }
}
