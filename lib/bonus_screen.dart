import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask2.dart';
import 'package:new_task/widgets/commontop.dart';

class BounsScreen extends StatelessWidget {
  const BounsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOURLY BONUSES'),
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
                    btnText: "BONUS 1",
                    taskText: "Read 5 news for 2 minutes to win 1000 coins"),
                CommonTask2(
                    btnText: "BONUS 2",
                    taskText: "Read 5 news for 2 minutes to win 1000 coins"),
                CommonTask2(
                    btnText: "BONUS 3",
                    taskText: "Read 5 news for 2 minutes to win 1000 coins"),
                CommonTask2(
                    btnText: "BONUS 4",
                    taskText: "Read 5 news for 2 minutes to win 1000 coins"),
                CommonTask2(
                    btnText: "BONUS 5",
                    taskText: "Read 5 news for 2 minutes to win 1000 coins"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
