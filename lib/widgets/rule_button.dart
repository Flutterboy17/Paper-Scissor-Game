import 'package:flutter/material.dart';
import '../utils/colors.dart';

class RuleButton extends StatelessWidget {
  const RuleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RawMaterialButton(
        padding: EdgeInsets.all(24.0),
        onPressed: () {},
        shape: StadiumBorder(side: BorderSide(color: mainColor, width: 5)),
        child: Text(
          "Rules",
          style: TextStyle(
              color: mainColor, fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
