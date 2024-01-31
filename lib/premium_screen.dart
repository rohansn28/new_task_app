import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commonpremiumtask.dart';
import 'package:new_task/widgets/commontop.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PREMIUM'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Commontop(),
                const SizedBox(
                  height: 16,
                ),
                const CommonMinCoinBar(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  width: MediaQuery.of(context).size.width * 0.8,
                  // height: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.width * 0.3,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            InkWell(
                              child: Container(
                                // height: 50,
                                width: MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  color: Colors.green,
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Text(
                                  "VIEW",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32,
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 10,
                              bottom: 2,
                              child: Text(
                                'AD',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 5.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        "Watch this video for instruction",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                CommonPremiumTask(btnText: "TASK 1"),
                CommonPremiumTask(btnText: "TASK 2"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
