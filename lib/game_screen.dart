import 'package:flutter/material.dart';
import 'package:new_task/game_home.dart';
import 'package:new_task/model/applink.dart';

import 'package:new_task/utils/web.dart';
import 'package:new_task/variables/local_variables.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask2.dart';
import 'package:new_task/widgets/commontop.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late SharedPreferences _prefs;
  Future<void> _refreshData() async {
    // Fetch updated data from shared preferences

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
        title: const Text('GAME'),
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
                Expanded(
                  child: FutureBuilder<List<Applink>>(
                    future: fetchGameData('gamelinks'),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            // print(snapshot.data![index].link);
                            return CommonTask2(
                              btnText: "GAME ${index + 1}",
                              stayTime: '2', //30
                              winCoin: '100',
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
