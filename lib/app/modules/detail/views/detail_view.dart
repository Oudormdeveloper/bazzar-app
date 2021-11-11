import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailView'),
        centerTitle: true,
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
                CupertinoIcons.shopping_cart,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kvDefaultPadding),
          child: Column(
            children: [
              ProductFeature(),
              ProductMeta(),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Wrap(
                  spacing: 15,
                  children: [
                    _buildTab(
                      text: 'Product',
                      active: true,
                      onPressed: () {},
                    ),
                    _buildTab(
                      text: 'Details',
                      onPressed: () {},
                    ),
                    _buildTab(
                      text: 'Reviews',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SelectColorSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: cGrey,
            ),
          ),
        ),
        padding: EdgeInsets.all(kvDefaultPadding),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Add To Cart',
                    style: Get.textTheme.button!.copyWith(
                      color: cPrimary,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: cWhite,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: cPrimary,
                      ),
                      borderRadius: BorderRadius.circular(
                        kvBorderRadius,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            HorizontalSpacing(),
            Expanded(
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: Get.textTheme.button!.copyWith(
                      color: cWhite,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: cPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        kvBorderRadius,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab({
    required String text,
    bool active = false,
    required Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: active ? cFill : cWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: Get.textTheme.button!.copyWith(
          color: active ? cPrimary : Colors.grey,
        ),
      ),
    );
  }
}

class SelectColorSection extends StatelessWidget {
  const SelectColorSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'select Color',
          style: kCaptionText(),
        ),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            spacing: 15,
            children: [
              _buildSelectColor(
                active: true,
                onPressed: () {},
              ),
              _buildSelectColor(
                onPressed: () {},
              ),
              _buildSelectColor(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSelectColor({
    bool active = false,
    required Function() onPressed,
  }) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: active ? cPrimary : cGrey,
      child: CircleAvatar(
        radius: 23,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1544327415-cfb77383dabc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1708&q=80',
        ),
      ),
    );
  }
}

class ProductMeta extends StatelessWidget {
  const ProductMeta({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '\$149.99',
                style: Get.textTheme.subtitle1!.copyWith(
                  color: cPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              ...List.generate(
                4,
                (index) => Icon(
                  Icons.star,
                  size: 14,
                  color: cPrimary,
                ),
              ),
              Icon(
                Icons.star,
                size: 14,
                color: cGrey,
              ),
              HorizontalSpacing(of: 5),
              Text('4.5'),
            ],
          ),
          Row(
            children: [
              Text(
                'Sporty Sneaker',
                style: Get.textTheme.subtitle1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Text(
                '20 Sold | ',
                style: Get.textTheme.caption,
              ),
              Text(
                'In Stock',
                style: Get.textTheme.caption!.copyWith(
                  color: cPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductFeature extends StatelessWidget {
  const ProductFeature({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      decoration: BoxDecoration(
        color: cPrimary,
        borderRadius: BorderRadius.circular(kvBorderRadius),
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0.70, -1),
            child: IconButton(
              onPressed: () {
                print('ok');
              },
              icon: Icon(
                Icons.share,
                color: cPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, -1),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                color: cPrimary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
