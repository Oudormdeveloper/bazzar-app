import 'package:bazzar/core.dart';

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
          'Select Color',
          style: kBody1Text().copyWith(
            color: Colors.grey,
          ),
        ),
        VerticalSpacing(of: 10),
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
      radius: 23,
      backgroundColor: active ? cPrimary : cGrey,
      child: CircleAvatar(
        radius: 21,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1544327415-cfb77383dabc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1708&q=80',
        ),
      ),
    );
  }
}
