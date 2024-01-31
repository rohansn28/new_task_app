import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask.dart';
import 'package:new_task/widgets/commontop.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PLAY'),
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
                  btnText: "PLAY",
                  stayTime: "30",
                  winCoin: "150",
                ),
                commontask(
                  btnText: "PLAY",
                  stayTime: "30",
                  winCoin: "150",
                ),
                commontask(
                  btnText: "PLAY",
                  stayTime: "30",
                  winCoin: "150",
                ),
                commontask(
                  btnText: "PLAY",
                  stayTime: "30",
                  winCoin: "150",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
