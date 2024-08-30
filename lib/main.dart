import 'package:flutter/material.dart';
import 'screens/input_page.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  //custom function for changing the textstyle -- check in comments down
  TextStyle textThemesAll() {
    return TextStyle(color: Colors.white
        // Add any other common text styles here);
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     scaffoldBackgroundColor: Color(0xFF0A0E21),
      //     primaryColor: Color(0xFF0A0E21),
      //     //for top bar
      //     textTheme: TextTheme(
      //         //for varied sizes of texts. textThemesAll if my own created function, check on top
      //         bodyMedium: textThemesAll(),
      //         bodySmall: textThemesAll(),
      //         bodyLarge: textThemesAll(),
      //         titleLarge: textThemesAll(),
      //         titleMedium: textThemesAll(),
      //         titleSmall: textThemesAll()),
      //
      //     appBarTheme: AppBarTheme(
      //       backgroundColor: Color(0xFF0A0E21),
      //       foregroundColor: Colors.white,
      //       //elevation: 5.0,
      //     )),


      // we can now simplify the above code by using already provided dark theme just by chaning whatever we want.
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        )
      ),
      home: InputPage(),
    );
  }
}


