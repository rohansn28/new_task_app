import 'package:flutter/material.dart';
import 'package:new_task/game_home.dart';
import 'package:new_task/model/applink.dart';
import 'package:new_task/utils/web.dart';
import 'package:new_task/variables/local_variables.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commonpremiumtask.dart';
import 'package:new_task/widgets/commontop.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  late SharedPreferences _prefs;
  Future<void> _refreshData() async {
    int updatedCoins = await SharedPreferences.getInstance().then((prefs) {
      return prefs.getInt(gameCoinsLabel) ?? 0;
    });

    // Update UI
    setState(() {
      gameCoins = updatedCoins;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () async {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => GameHome(),
              ),
            );
            if (gameCoins >= phase && phase != 0) {
              _prefs = await SharedPreferences.getInstance();
              _prefs.setInt('${phase}Coin-Completiontime',
                  DateTime.now().millisecondsSinceEpoch);
            }
          },
        ),
        title: const Text('MINI TASK'),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => GameHome(),
              ),
            );
          });
        },
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Commontop(
                  refreshCallback: _refreshData,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CommonMinCoinBar(),
                const SizedBox(
                  height: 20,
                ),
                // Container(
                //   padding: const EdgeInsets.only(bottom: 8.0),
                //   width: MediaQuery.of(context).size.width * 0.8,
                //   // height: MediaQuery.of(context).size.width * 0.5,
                //   color: Colors.white,
                //   child: Column(
                //     children: [
                //       Container(
                //         margin: const EdgeInsets.fromLTRB(0, 16, 0, 8),
                //         width: MediaQuery.of(context).size.width * 0.7,
                //         height: MediaQuery.of(context).size.width * 0.3,
                //         color: Colors.grey,
                //       ),
                //       Padding(
                //         padding: const EdgeInsets.all(8.0),
                //         child: Stack(
                //           children: [
                //             InkWell(
                //               child: Container(
                //                 // height: 50,
                //                 width: MediaQuery.of(context).size.width * 0.3,
                //                 decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(28),
                //                   color: Colors.green,
                //                   border: Border.all(color: Colors.black),
                //                 ),
                //                 child: const Text(
                //                   "VIEW",
                //                   textAlign: TextAlign.center,
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.w900,
                //                     fontSize: 32,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             const Positioned(
                //               right: 10,
                //               bottom: 2,
                //               child: Text(
                //                 'AD',
                //                 style: TextStyle(
                //                     color: Colors.white, fontSize: 5.0),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //       const Text(
                //         "Watch this video for instruction",
                //         style: TextStyle(
                //           fontSize: 20.0,
                //           fontWeight: FontWeight.bold,
                //         ),
                //         textAlign: TextAlign.center,
                //       )
                //     ],
                //   ),
                // ),
                Expanded(
                  child: FutureBuilder<List<Applink>>(
                    future: phase == 20000
                        ? fetchPlayData('playlinks')
                        : fetchPlayData('mtasklinks'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return CommonPremiumTask(
                              btnText: 'M TASK ${index + 1}',
                              stayTime: '2', //12
                              winCoin: phase == 20000 ? '2' : '20', // 20
                              url: snapshot.data![index].link,
                              index: index,
                            );
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      }

                      return const Center(
                        child: Text(
                          'Loading...',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
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
