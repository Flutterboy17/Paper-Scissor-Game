import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/paper_scissor.dart';
import '../widgets/rule_button.dart';
import '../widgets/score_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
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
            PaperScissor(btnWidth: btnWidth),
            RuleButton()
          ],
        ),
      ),
    );
  }
}
