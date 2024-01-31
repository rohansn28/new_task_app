import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask.dart';
import 'package:new_task/widgets/commontop.dart';

class TaskLineScreen extends StatelessWidget {
  const TaskLineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TASK LINE'),
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
                commontask(
                  btnText: "TASK 1",
                  stayTime: "50",
                  winCoin: "400",
                ),
                commontask(
                  btnText: "TASK 2",
                  stayTime: "50",
                  winCoin: "400",
                ),
                commontask(
                  btnText: "TASK 3",
                  stayTime: "50",
                  winCoin: "400",
                ),
                commontask(
                  btnText: "TASK 4",
                  stayTime: "50",
                  winCoin: "400",
                ),
                commontask(
                  btnText: "TASK 4",
                  stayTime: "50",
                  winCoin: "400",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
