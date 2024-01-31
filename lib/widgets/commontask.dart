import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonadmarkbottom.dart';

class commontask extends StatelessWidget {
  final String btnText;
  final String stayTime;
  final String winCoin;
  const commontask({
    super.key,
    required this.btnText,
    required this.stayTime,
    required this.winCoin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        height: 110,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                InkWell(
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.green,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Center(
                      child: Text(
                        btnText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                const AdMarkBottom(),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Play game $stayTime Seconds to win $winCoin coins",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
