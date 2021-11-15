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
        child: SingleChildScrollView(
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
                ProductBody(),
                // DetailBody()
                // ReviewBody()
              ],
            ),
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
