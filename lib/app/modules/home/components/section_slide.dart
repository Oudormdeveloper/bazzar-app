import 'package:bazzar/core.dart';

class SectionSlide extends StatelessWidget {
  const SectionSlide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KVPanel(
      padding: EdgeInsets.fromLTRB(
        kvDefaultPadding,
        kvDefaultPadding,
        0,
        kvDefaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Arrival',
            style: h6TextStyle().copyWith(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          VerticalSpacing(),
          SizedBox(
            height: 200,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SlideItem(
                    text: 'Super Flash Sale',
                    discount: '50%',
                    image:
                        'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2370&q=80',
                    onPressed: () {},
                  ),
                  HorizontalSpacing(of: 20),
                  SlideItem(
                    text: 'Super Flash Sale',
                    discount: '50%',
                    image:
                        'https://images.unsplash.com/photo-1634316427425-722247ebe036?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=3432&q=80',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
