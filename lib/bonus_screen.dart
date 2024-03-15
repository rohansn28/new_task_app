import 'package:flutter/material.dart';
import 'package:new_task/game_home.dart';
import 'package:new_task/model/applink.dart';
import 'package:new_task/utils/web.dart';
import 'package:new_task/variables/local_variables.dart';
import 'package:new_task/widgets/commonmincoinbar.dart';
import 'package:new_task/widgets/commontask2.dart';
import 'package:new_task/widgets/commontop.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BounsScreen extends StatefulWidget {
  const BounsScreen({super.key});

  @override
  State<BounsScreen> createState() => _BounsScreenState();
}

class _BounsScreenState extends State<BounsScreen> {
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
          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => GameHome(),
              ),
            );
          },
        ),
        title: const Text('HOURLY BONUSES'),
      ),
      body: SafeArea(
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
                  future: fetchBonusData('bonuslinks'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          // print(snapshot.data![index].link);
                          return CommonTask2(
                            btnText: "BONUS ${index + 1}",
                            stayTime: '5', //120
                            winCoin: '1000',
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
    );
  }
}

// class MyCustomNavigatorObserver extends NavigatorObserver {
//   @override
//   void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
//     // This method will be called when the back button is pressed
//     // You can perform custom actions here
//     print("Back button pressed");
//     // If you want to prevent the app from closing, you can push another route here
//   }
// }
