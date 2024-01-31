import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask2.dart';
import 'package:new_task/widgets/commontop.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GAME'),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Commontop(),
                SizedBox(
                  height: 16,
                ),
                CommonMinCoinBar(),
                SizedBox(
                  height: 20,
                ),
                CommonTask2(
                    btnText: "GAME 1",
                    taskText: "Play game for 2 minutes to win 100 coins"),
                CommonTask2(
                    btnText: "GAME 2",
                    taskText: "Play game for 2 minutes to win 100 coins"),
                CommonTask2(
                    btnText: "GAME 3",
                    taskText: "Play game for 2 minutes to win 100 coins"),
                CommonTask2(
                    btnText: "GAME 4",
                    taskText: "Play game for 2 minutes to win 100 coins"),
                CommonTask2(
                    btnText: "GAME 5",
                    taskText: "Play game for 2 minutes to win 100 coins"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
