import 'package:flutter/material.dart';

class PremiumCard extends StatelessWidget {
  final String route1, route2;
  const PremiumCard({
    super.key,
    required this.route1,
    required this.route2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        "PREMIUM",
                        // style: Theme.of(context).textTheme.headlineLarge,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      // height: MediaQuery.of(context).size.height * 0.06,
                      // color: Colors.white,
                      child: const Text(
                        '"MINIMUM 10000 COINS REQUIRED TO USE THIS"',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
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
                child: const Center(
                    child: Text(
                  'NEED HELP?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
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
