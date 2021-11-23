import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(accountBg), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            VerticalSpacing(
              of: kToolbarHeight,
            ),
            Padding(
              padding: EdgeInsets.all(kvDefaultPadding),
              child: Column(
                children: [
                  Text(
                    'Account',
                    style: Get.textTheme.headline4!.copyWith(
                      color: cWhite,
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(iconProfile),
                        radius: 30,
                      ),
                      HorizontalSpacing(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name',
                              style: h6TextStyle().copyWith(
                                color: cWhite,
                              ),
                            ),
                            VerticalSpacing(of: 10),
                            Text(
                              'email@gmail.com',
                              style: kCaptionText().copyWith(
                                color: cWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(99),
                          child: Material(
                            color: cWhite.withOpacity(0.15),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                CupertinoIcons.pencil,
                                color: cWhite,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  VerticalSpacing(of: 40),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        _itemMenu(
                          title: 'Shopping Address',
                          icon: CupertinoIcons.placemark,
                          onTap: () {},
                        ),
                        _itemMenu(
                          title: 'Payment Method',
                          icon: CupertinoIcons.creditcard,
                          onTap: () {},
                        ),
                        _itemMenu(
                          title: 'Order History',
                          icon: CupertinoIcons.list_bullet,
                          onTap: () {},
                        ),
                        _itemMenu(
                          title: 'Delivery Status',
                          icon: CupertinoIcons.car_detailed,
                          onTap: () {},
                        ),
                        _itemMenu(
                          title: 'Language',
                          icon: CupertinoIcons.globe,
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemMenu({
    required String title,
    required IconData icon,
    required Function() onTap,
  }) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: cPrimary,
          ),
          horizontalTitleGap: 1,
          title: Text(
            title,
          ),
          onTap: onTap,
        ),
        Divider(
          height: 1,
          indent: 58,
          endIndent: 15,
        ),
      ],
    );
  }
}
