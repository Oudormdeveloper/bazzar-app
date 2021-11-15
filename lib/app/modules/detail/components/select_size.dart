import 'package:bazzar/core.dart';

class SelectSize extends StatelessWidget {
  const SelectSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Select Size',
          style: kBody1Text().copyWith(
            color: Colors.grey,
          ),
        ),
        VerticalSpacing(of: 10),
        SizedBox(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 15,
            children: [
              _buildSizeItem(
                text: '4.5',
                onPressed: () {},
              ),
              _buildSizeItem(
                text: '5.0',
                onPressed: () {},
                isSelected: true,
              ),
              _buildSizeItem(
                text: '6.5',
                onPressed: () {},
              ),
              _buildSizeItem(
                text: '7.0',
                onPressed: () {},
              ),
              _buildSizeItem(
                text: '8.0',
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSizeItem({
    required String text,
    required Function() onPressed,
    bool isSelected = false,
  }) {
    return SizedBox(
      width: 45,
      height: 45,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: Get.textTheme.button!.copyWith(
            color: isSelected ? cWhite : cPrimary,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(0),
          elevation: 1,
          primary: isSelected ? cPrimary : cWhite,
        ),
      ),
    );
  }
}
