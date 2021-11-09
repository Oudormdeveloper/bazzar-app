import 'package:bazzar/core.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cPrimary,
      appBar: AppBar(
        backgroundColor: cPrimary,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                'bazaar',
                style: h3TextStyle().copyWith(
                  color: cWhite,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            VerticalSpacing(of: 50),
            Text(
              "Sign Up",
              style: h5TextStyle(),
            ),
            VerticalSpacing(of: 50),
            KVTextFormField(
              hintext: 'Full Name',
              prefixIcon: Icons.person,
            ),
            KVTextFormField(hintext: 'Email', prefixIcon: Icons.email),
            KVTextFormField(
              hintext: 'Phone Number',
              prefixIcon: Icons.phone,
            ),
            KVTextFormField(
              hintext: 'Password',
              prefixIcon: Icons.lock,
              suffixIcon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(height: 50),
            KVPrimaryButton(
              fillColor: cWhite,
              textColor: cPrimary,
              text: 'Sign In',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
