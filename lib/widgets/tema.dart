import 'package:flutter/material.dart';

class Tema extends StatefulWidget {
  const Tema({super.key});

  @override
  State<Tema> createState() => _TemaState();
}

class _TemaState extends State<Tema> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304,
      height: 154,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          color: Colors.grey[200]),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(15)),
                    color: Colors.white),
                child: const Center(
                    child: Icon(
                  Icons.emoji_events_outlined,
                  size: 80,
                  color: Colors.grey,
                )),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Introdução',
                      style: TextStyle(fontSize: 20, fontFamily: 'upheavtt'),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Level\n1',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'upheavtt'),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Level\n2',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'upheavtt'),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Level\n3',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'upheavtt'),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15)),
                            border: Border.all(width: 1, color: Colors.grey),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Text(
                            'Level\n4',
                            textAlign: TextAlign.center,
                            style:
                                TextStyle(fontSize: 10, fontFamily: 'upheavtt'),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.grey),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(15),
                  ),
                ),
                fixedSize: const Size(300, 50),
                backgroundColor: Colors.orange,
                elevation: 0),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Teoria',
                    style: TextStyle(fontSize: 20, fontFamily: 'upheavtt'),
                  ),
                ),
                Icon(Icons.description_rounded)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
