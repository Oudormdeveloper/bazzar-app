import 'package:bazzar/core.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.DETAIL);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(kvBorderRadius),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: cGrey,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.network(
                        'https://images.unsplash.com/photo-1549972574-8e3e1ed6a347?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1760&q=80',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: cPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Text(
                            '\$125.00',
                            style: kButtonText(),
                          ),
                          HorizontalSpacing(),
                          Text(
                            '\$125.00',
                            style: kBody2Text().copyWith(
                              color: cPrimary,
                              decoration: TextDecoration.lineThrough,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'smart watch',
                            style: kBody2Text().copyWith(),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: cPrimary,
                              borderRadius: BorderRadius.circular(
                                4,
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 12,
                                  color: cWhite,
                                ),
                                Text(
                                  '4.5',
                                  style: kBody2Text().copyWith(
                                    fontSize: 12,
                                    color: cWhite,
                                  ),
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
              SizedBox(
                width: double.infinity,
                child: Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: cPrimary,
                  ),
                  child: Center(
                    child: Text(
                      'Add to cart',
                      style: kButtonText().copyWith(
                        color: cWhite,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
