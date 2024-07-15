import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/game.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: mainColor, width: 5.0),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "SCORE",
            style: TextStyle(
              color: mainColor,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${Game.gameScore}",
            style: TextStyle(
              color: mainColor,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
