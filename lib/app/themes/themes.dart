import 'package:bazzar/core.dart';

class Themes {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: cWhite,
        elevation: 0,
        iconTheme: IconThemeData(
          color: cGrey,
        ),
      ),
      scaffoldBackgroundColor: cWhite,
      textTheme: GoogleFonts.poppinsTextTheme(),
      bottomSheetTheme: BottomSheetThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(kvBorderRadius),
          ),
        ),
      ),
      inputDecorationTheme: inputDecorationTheme(),
      dividerColor: cPrimary,
    );
  }
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: cFill),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    // contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 15),
    contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder.copyWith(
      borderSide: BorderSide(color: cPrimary),
    ),
    filled: true,
    fillColor: cFill,
    border: outlineInputBorder,

    labelStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1,
      fontFamily: 'poppins',
    ),
  );
}
