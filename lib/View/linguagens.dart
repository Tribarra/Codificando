import 'package:codificando/View/menu.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/user_model.dart';

class Linguagens extends StatefulWidget {
  const Linguagens({super.key});

  @override
  State<Linguagens> createState() => _LinguagensState();
}

class _LinguagensState extends State<Linguagens> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Scrollbar(
              child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.white,
                elevation: 0,
                flexibleSpace: FlexibleSpaceBar(
                  title: RichText(
                    text: const TextSpan(
                        style: TextStyle(fontSize: 30, fontFamily: 'upheavtt'),
                        children: [
                          TextSpan(
                            text: 'Cod',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: 'if',
                            style: TextStyle(color: Colors.orange),
                          ),
                          TextSpan(
                            text: 'icando',
                            style: TextStyle(color: Colors.black),
                          )
                        ]),
                  ),
                  centerTitle: true,
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'upheavtt'),
                              children: [
                            TextSpan(
                                text: 'Switch',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '(',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: 'Linguagens',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: ')\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '{\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   case ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '1',
                                style: TextStyle(color: Colors.green)),
                            TextSpan(
                                text: ':\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   {\n',
                                style: TextStyle(color: Colors.orange)),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const Menu()));
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    )),
                                backgroundColor: Colors.white,
                                fixedSize: const Size(250, 50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/c.png',
                              ),
                            )),
                      ),
                      RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'upheavtt'),
                              children: [
                            TextSpan(
                                text: '\n       break;\n\n',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '   }\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   case ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '2',
                                style: TextStyle(color: Colors.green)),
                            TextSpan(
                                text: ':\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   {\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '       // Em breve...\n',
                                style: TextStyle(color: Colors.blue)),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    )),
                                backgroundColor: Colors.white,
                                fixedSize: const Size(250, 50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/python.png',
                              ),
                            )),
                      ),
                      RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'upheavtt'),
                              children: [
                            TextSpan(
                                text: '\n       break;\n\n',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '   }\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   case ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '3',
                                style: TextStyle(color: Colors.green)),
                            TextSpan(
                                text: ':\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '   {\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: '       // Em breve...\n',
                                style: TextStyle(color: Colors.blue)),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: ElevatedButton(
                            onPressed: null,
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    )),
                                backgroundColor: Colors.white,
                                fixedSize: const Size(250, 50)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'assets/images/java.png',
                              ),
                            )),
                      ),
                      RichText(
                          text: const TextSpan(
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'upheavtt'),
                              children: [
                            TextSpan(
                                text: '\n       break;\n\n',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: '   }\n\n',
                                style: TextStyle(color: Colors.orange)),
                            TextSpan(
                                text: ' }',
                                style: TextStyle(color: Colors.orange)),
                          ])),
                    ],
                  ),
                ),
              )
            ],
          )),
        );
      },
    );
  }
}
