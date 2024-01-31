import 'package:flutter/material.dart';

class CommonBox extends StatelessWidget {
  final String text1;
  final String text2;
  final String route1, route2;
  final double? fontSize1, fontSize2;
  const CommonBox({
    super.key,
    required this.text1,
    required this.text2,
    required this.route1,
    required this.route2,
    this.fontSize1 = 28.0,
    this.fontSize2 = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.only(top: top, left: 0, right: 0),
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, route1);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the value as needed
              ),
              shadowColor: const Color.fromARGB(255, 7, 28, 255),
              elevation: 10.0,
              color: Colors.green,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height * 0.17,
                child: Center(
                  child: Text(
                    text1,
                    // style: Theme.of(context).textTheme.headlineLarge,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize1,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, route2);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(20.0), // Adjust the value as needed
              ),
              shadowColor: const Color.fromARGB(255, 7, 28, 255),
              elevation: 10.0,
              color: Colors.green,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height * 0.17,
                child: Center(
                    child: Text(
                  text2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize2,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
