import 'package:flutter/material.dart';
import 'package:new_task/widgets/commonadmarkbottom.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontop.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HELP'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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
                  height: MediaQuery.of(context).size.width * 0.5,
                  color: Colors.white,
                  child: Center(
                    child: Stack(
                      children: [
                        InkWell(
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.green,
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(
                              child: Text(
                                'CONTACT US',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const AdMarkBottom()
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.3,
                  color: Colors.white,
                  child: Center(
                    child: Stack(
                      children: [
                        InkWell(
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.green,
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Center(
                              child: Text(
                                'PRIVACY POLICY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const AdMarkBottom(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
