import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

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
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.all(kvDefaultPadding),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      color: cGrey,
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                VerticalSpacing(),
                                Text(
                                  'What is your rate?',
                                  style: Get.textTheme.subtitle1,
                                ),
                                VerticalSpacing(of: 10),
                                SizedBox(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ...List.generate(
                                        4,
                                        (index) => Icon(
                                          Icons.star,
                                          color: cPrimary,
                                          size: 40,
                                        ),
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: cGrey,
                                        size: 40,
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 40,
                                ),
                                Text(
                                  'Pleas share your opinion\nabout the product',
                                  style: Get.textTheme.subtitle1,
                                  textAlign: TextAlign.center,
                                ),
                                VerticalSpacing(),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Write Your Comment...',
                                    contentPadding:
                                        EdgeInsets.all(kvDefaultPadding),
                                  ),
                                  minLines: 3,
                                  maxLines: 4,
                                ),
                                VerticalSpacing(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: cFill,
                                        borderRadius: BorderRadius.circular(
                                            kvBorderRadius),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    HorizontalSpacing(),
                                    Container(
                                      width: 80,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            kvBorderRadius),
                                        border: Border.all(
                                          width: 1,
                                          color: cGrey,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            CupertinoIcons.camera,
                                            color: cPrimary,
                                          ),
                                          Text(
                                            'add photo',
                                            style: Get.textTheme.caption,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: EdgeInsets.all(30),
                            child: KVPrimaryButton(
                              text: 'Send Review',
                              onPressed: () {},
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Icon(
                      Icons.star,
                      size: 14,
                      color: cPrimary,
                    ),
                  ),
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
