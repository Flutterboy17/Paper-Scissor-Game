import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../utils/colors.dart';

class PlayAgainButton extends StatelessWidget {
  const PlayAgainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RawMaterialButton(
        padding: EdgeInsets.all(24.0),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreen(),
              ));
        },
        shape: StadiumBorder(),
        fillColor: mainColor,
        child: Text(
          "Play Again",
          style: TextStyle(
              color: bgColor,
              fontSize: 26.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
