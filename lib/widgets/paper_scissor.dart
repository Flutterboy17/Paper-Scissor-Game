import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_paper_scissor_game/utils/game.dart';
import '../screens/game_screen.dart';
import '../utils/assets.dart';
import 'game_button.dart';

class PaperScissor extends StatelessWidget {
  const PaperScissor({
    super.key,
    required this.btnWidth,
  });

  final double btnWidth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: MediaQuery.of(context).size.width / 2 - (btnWidth / 2) - 20,
              child: Hero(
                tag: "Rock",
                child: gameBtn(() {
                  log("you choosed rock");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(GameChoice("Rock")),
                    ),
                  );
                }, rock, btnWidth),
              ),
            ),
            Positioned(
              top: btnWidth,
              left: MediaQuery.of(context).size.width / 2 - btnWidth - 40,
              child: Hero(
                tag: "Scisors",
                child: gameBtn(() {
                  log("you choosed scisors");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(GameChoice("Scisors")),
                    ),
                  );
                }, scisor, btnWidth),
              ),
            ),
            Positioned(
              top: btnWidth,
              right: MediaQuery.of(context).size.width / 2 - btnWidth - 40,
              child: Hero(
                tag: "Paper",
                child: gameBtn(() {
                  log("you choosed paper");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameScreen(GameChoice("Paper")),
                    ),
                  );
                }, paper, btnWidth),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
