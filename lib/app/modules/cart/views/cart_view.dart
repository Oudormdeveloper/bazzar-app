import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Material(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            leading: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            trailing: Badge(
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
            largeTitle: Text('Cart'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kvBorderRadius),
                    child: Container(
                      child: Row(children: [
                        SizedBox(
                          width: 100,
                          height: double.infinity,
                          child: Image.network(
                            'https://images.unsplash.com/photo-1532697057284-bbe526e18cdb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
                            fit: BoxFit.cover,
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
