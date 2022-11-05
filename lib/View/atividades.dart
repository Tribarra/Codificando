import 'package:flutter/material.dart';

class Atividades extends StatefulWidget {
  const Atividades({super.key});

  @override
  State<Atividades> createState() => _AtividadesState();
}

class _AtividadesState extends State<Atividades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
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
                Column(
                  children: [taskList()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget taskList() {
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
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(15)),
                          border: Border.all(width: 1, color: Colors.grey),
                          color: Colors.white),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(15)),
              color: Colors.white),
        )
      ]),
    ),
  );
}
