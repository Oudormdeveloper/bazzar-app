import 'package:bazzar/core.dart';
import 'package:flutter/cupertino.dart';

class SlideItem extends StatelessWidget {
  const SlideItem({
    Key? key,
    required this.text,
    required this.discount,
    required this.image,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final String discount;
  final String image;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(kvBorderRadius),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                color: Colors.black.withOpacity(0.5),
              ),
              Padding(
                padding: EdgeInsets.all(kvDefaultPadding),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: h5TextStyle().copyWith(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '$discount Off',
                          style: h5TextStyle().copyWith(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      minSize: 30,
                      color: cWhite,
                      child: Text(
                        'See More',
                        style: kButtonText(),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
