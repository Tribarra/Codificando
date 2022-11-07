import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/user_model.dart';

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        ScopedModelDescendant<UserModel>(builder: (context, child, model) {
      return Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    'assets/images/c.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.orange),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey[200],
                      boxShadow: const [
                        BoxShadow(color: Colors.orange, blurRadius: 15)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Master',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'upheavtt',
                              color: Colors.orange,
                              shadows: [
                                Shadow(color: Colors.orange, blurRadius: 50)
                              ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 290,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: Colors.purple),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              color: Colors.grey[200],
                              boxShadow: const [
                                BoxShadow(color: Colors.purple, blurRadius: 15)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Seniors',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontFamily: 'upheavtt',
                                      color: Colors.purple,
                                      shadows: [
                                        Shadow(
                                            color: Colors.purple,
                                            blurRadius: 50)
                                      ]),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 280,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Colors.blue),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                      color: Colors.grey[200],
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.blue, blurRadius: 15)
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(15),
                                        child: Text(
                                          'Pleno',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'upheavtt',
                                              color: Colors.blue,
                                              shadows: [
                                                Shadow(
                                                    color: Colors.blue,
                                                    blurRadius: 50)
                                              ]),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          width: 270,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 2,
                                                  color: Colors.green),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(15)),
                                              color: Colors.grey[200],
                                              boxShadow: const [
                                                BoxShadow(
                                                    color: Colors.green,
                                                    blurRadius: 15)
                                              ]),
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.all(15),
                                                child: Text(
                                                  'Junior',
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      fontFamily: 'upheavtt',
                                                      color: Colors.green,
                                                      shadows: [
                                                        Shadow(
                                                            color: Colors.green,
                                                            blurRadius: 50)
                                                      ]),
                                                ),
                                              ),
                                              model.listRanking(0)
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }));
  }
}
