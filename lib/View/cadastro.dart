import 'dart:ui';

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: const EdgeInsets.all(15),
                child: RichText(
                  text:
                      const TextSpan(style: TextStyle(fontSize: 40), children: [
                    TextSpan(
                        text: 'cadastro.',
                        style: TextStyle(
                            color: Colors.black, fontFamily: "upheavtt")),
                    TextSpan(
                        text: 'txt',
                        style: TextStyle(
                            color: Colors.green, fontFamily: "upheavtt")),
                  ]),
                )),
            Padding(
                padding: const EdgeInsets.all(15),
                child: RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                      TextSpan(
                          text: 'Class ',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                      TextSpan(
                          text: 'Usuario\n',
                          style: TextStyle(
                              color: Colors.black, fontFamily: "upheavtt")),
                      TextSpan(
                          text: '{\n',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                    ]))),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                      TextSpan(
                          text: '   String ',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                      TextSpan(
                          text: 'Nome =',
                          style: TextStyle(
                              color: Colors.black, fontFamily: "upheavtt")),
                    ])),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                  ),
                  child: SizedBox(
                    width: 125,
                    child: TextField(
                      textDirection: TextDirection.ltr,
                      autocorrect: false,
                      cursorColor: Colors.green,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontFamily: 'upheavtt',
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 30),
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                      TextSpan(
                          text: '   String ',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                      TextSpan(
                          text: 'email =',
                          style: TextStyle(
                              color: Colors.black, fontFamily: "upheavtt")),
                    ])),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                  ),
                  child: SizedBox(
                    width: 125,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textDirection: TextDirection.ltr,
                      autocorrect: false,
                      cursorColor: Colors.green,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontFamily: 'upheavtt',
                      ),
                      decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 30),
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(children: [
                RichText(
                    text: const TextSpan(
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        children: [
                      TextSpan(
                          text: '   String ',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                      TextSpan(
                          text: 'senha',
                          style: TextStyle(
                              color: Colors.black, fontFamily: "upheavtt")),
                      TextSpan(
                          text: '[] = {',
                          style: TextStyle(
                              color: Colors.orange, fontFamily: "upheavtt")),
                    ])),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: SizedBox(
                    width: 160,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      textDirection: TextDirection.ltr,
                      autocorrect: false,
                      cursorColor: Colors.green,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontFamily: 'upheavtt',
                      ),
                      decoration: InputDecoration(
                        labelText: '"Nova senha"',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontFamily: 'upheavtt',
                        ),
                        constraints: BoxConstraints(maxHeight: 30),
                        contentPadding: EdgeInsets.only(left: 10, right: 10),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ])),
    );
  }
}
