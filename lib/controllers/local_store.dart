import 'package:flutter/material.dart';
import 'package:new_task/variables/local_variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

void initPrefs(context) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  // prefs.remove(gameCoinsLabel);
  // prefs.setInt(gameCoinsLabel, 18000);
  if (prefs.containsKey(gameCoinsLabel)) {
    gameCoins = prefs.getInt(gameCoinsLabel)!;
    if (gameCoins < 12000) {
      phase = prefs.getInt('phase1')!;
    }
    if (gameCoins >= 12000 && gameCoins < 15000) {
      phase = prefs.getInt('phase2')!;
    }
    if (gameCoins >= 15000 && gameCoins < 18000) {
      phase = prefs.getInt('phase3')!;
    }
    if (gameCoins >= 18000 && gameCoins < 20000) {
      phase = prefs.getInt('phase4')!;
    }
  } else {
    prefs.setInt(gameCoinsLabel, 0);
    prefs.setInt('phase1', 12000);
    prefs.setInt('phase2', 15000);
    prefs.setInt('phase3', 18000);
    prefs.setInt('phase4', 20000);

    gameCoins = 0;
  }
  Navigator.popAndPushNamed(context, "/gamehome");
}

Future<int> increaseGameCoin(int value) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();

  if ((gameCoins + value) >= 19000) {
    prefs.setInt(gameCoinsLabel, prefs.getInt(gameCoinsLabel)! + 1);
    gameCoins = prefs.getInt(gameCoinsLabel)!;
  } else {
    prefs.setInt(gameCoinsLabel, prefs.getInt(gameCoinsLabel)! + value);
    gameCoins = prefs.getInt(gameCoinsLabel)!;
  }

  return gameCoins;
}
