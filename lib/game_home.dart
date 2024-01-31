import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonbottombaritem.dart';
import 'package:new_task/widgets/commonbox.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontop.dart';
import 'package:new_task/widgets/premium_card.dart';

class GameHome extends StatelessWidget {
  const GameHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.white),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonBottomBarItem(
                  text: "Redeem",
                  size: 30,
                  img: "assets/images/wallet.png",
                ),
                CommonBottomBarItem(
                  text: "History",
                  size: 30,
                  img: "assets/images/cash-flow.png",
                ),
                CommonBottomBarItem(
                  size: 42,
                  img: "assets/images/spinwheel gif1.gif",
                  text: '',
                ),
                CommonBottomBarItem(
                  size: 50,
                  img: "assets/images/spinwheel gif2.gif",
                  text: '',
                ),
              ],
            ),
          ],
        ),
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
                  height: 16,
                ),
                CommonBox(
                  text1: 'PLAY',
                  text2: 'TASK LINE',
                  route1: '/play',
                  route2: '/taskline',
                  fontSize1: 48.0,
                  fontSize2: 48.0,
                ),
                CommonBox(
                  text1: 'HOURLY BONUSES',
                  text2: 'GAME',
                  route1: '/bonus',
                  route2: '/game',
                  fontSize2: 45.0,
                ),
                PremiumCard(
                  route1: '/premium',
                  route2: '/help',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
