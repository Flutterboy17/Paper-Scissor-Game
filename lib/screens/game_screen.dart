import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_paper_scissor_game/utils/assets.dart';
import '../utils/colors.dart';
import '../utils/game.dart';
import '../widgets/game_button.dart';
import '../widgets/play_again_button.dart';
import '../widgets/rule_button.dart';
import '../widgets/score_card.dart';

class GameScreen extends StatefulWidget {
  GameScreen(this.gameChoice, {super.key});
  GameChoice gameChoice;
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  String? randomChoice() {
    Random random = Random();
    int robotChoiceIndex = random.nextInt(3);
    return Game.choices[robotChoiceIndex];
  }

  @override
  Widget build(BuildContext context) {
    String robotChoice = randomChoice()!;
    String? robotChoicePath;
    switch (robotChoice) {
      case "Rock":
        robotChoicePath = rock;
        break;
      case "Paper":
        robotChoicePath = paper;
        break;
      case "Scisors":
        robotChoicePath = scisor;
        break;
      default:
    }
    String? playerChoice;
    switch (widget.gameChoice.type) {
      case "Rock":
        playerChoice = rock;
        break;
      case "Paper":
        playerChoice = paper;
        break;
      case "Scisors":
        playerChoice = scisor;
        break;
      default:
    }
    if (GameChoice.gameRules[widget.gameChoice.type]![robotChoice] ==
        "You Win") {
      setState(() {
        Game.gameScore++;
      });
    }
    double btnWidth = MediaQuery.of(context).size.width / 2 - 40;
    return Scaffold(
      backgroundColor: bgColor,
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 34, top: 50, left: 24, right: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScoreCard(),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Hero(
                      tag: "${widget.gameChoice.type}",
                      child: gameBtn(() {}, playerChoice!, btnWidth - 20),
                    ),
                    Text(
                      "VS",
                      style: TextStyle(color: mainColor, fontSize: 26.0),
                    ),
                    AnimatedOpacity(
                      opacity: 1,
                      duration: Duration(seconds: 3),
                      child: gameBtn(() {}, robotChoicePath!, btnWidth - 20),
                    )
                  ],
                ),
              ),
            ),
            Text(
              "${GameChoice.gameRules[widget.gameChoice.type]![robotChoice]}",
              style: TextStyle(color: mainColor, fontSize: 36.0),
            ),
            SizedBox(
              height: 30.0,
            ),
            PlayAgainButton(),
            SizedBox(
              height: 20.0,
            ),
            RuleButton()
          ],
        ),
      ),
    );
  }
}
