import 'package:codificando/View/menu.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/user_model.dart';

class Exercicio extends StatefulWidget {
  const Exercicio({super.key});

  @override
  State<Exercicio> createState() => _ExercicioState();
}

class _ExercicioState extends State<Exercicio> {
  int cont = 0;
  List<String> textos = ['', '', '', '', '', 'Aguardando'];
  List<Color> cores = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  void Function()? fim;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        ScopedModelDescendant<UserModel>(builder: (context, child, model) {
      return Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Monte a estrutura do programa corretamente:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontFamily: 'upheavtt'),
            ),
          ),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: Colors.grey.shade400),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              color: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                  text: TextSpan(
                      style: const TextStyle(
                        fontFamily: "upheavtt",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                    TextSpan(
                        text: textos[0],
                        style: const TextStyle(
                          color: Colors.green,
                        )),
                    TextSpan(
                        text: textos[1],
                        style: const TextStyle(
                          color: Colors.blue,
                        )),
                    TextSpan(
                        text: textos[2],
                        style: const TextStyle(
                          color: Colors.orange,
                        )),
                    TextSpan(
                        text: textos[3],
                        style: const TextStyle(
                          color: Colors.red,
                        )),
                    TextSpan(
                        text: textos[4],
                        style: const TextStyle(
                          color: Colors.blue,
                        )),
                  ])),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (fim == null) {
                        setState(() {
                          if (cont == 0) {
                            cont++;
                            cores[0] = Colors.greenAccent;
                            textos[0] =
                                '#include <stdio.h>\n#include <stdlib.h>\n\n\n';
                          } else {
                            reset();
                          }
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.black,
                            )),
                        backgroundColor: cores[0],
                        fixedSize: const Size(140, 60)),
                    child: const Text(
                      'Bibliotecas',
                      style: TextStyle(
                        fontFamily: "upheavtt",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (fim == null) {
                        setState(() {
                          if (cont == 1) {
                            cont++;
                            cores[1] = Colors.greenAccent;
                            textos[1] = 'main () {\n\n\n';
                            textos[4] = '}';
                          } else {
                            reset();
                          }
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.black,
                            )),
                        backgroundColor: cores[1],
                        fixedSize: const Size(140, 60)),
                    child: const Text(
                      'Função',
                      style: TextStyle(
                        fontFamily: "upheavtt",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (fim == null) {
                        setState(() {
                          if (cont == 2) {
                            cont++;
                            cores[2] = Colors.greenAccent;
                            textos[2] = '   int n1 = 3, n2 = 4, soma;\n\n\n';
                          } else {
                            reset();
                          }
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.black,
                            )),
                        backgroundColor: cores[2],
                        fixedSize: const Size(140, 60)),
                    child: const Text(
                      'Variáveis',
                      style: TextStyle(
                        fontFamily: "upheavtt",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (fim == null) {
                        setState(() {
                          if (cont == 3) {
                            cont++;
                            cores[3] = Colors.greenAccent;
                            cores[4] = Colors.greenAccent;
                            textos[3] =
                                '   soma = n1 + n2;\n   printf ( “A soma é: %i” , soma );\n\n\n';
                            textos[5] = 'Correto!';

                            fim = () {
                              if (model.userData != {}) {
                                model.updateInfo(
                                    points: model.getInfo(1) + 1,
                                    cPoints: model.getInfo(2) + 1);
                              }
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Menu()),
                              );
                            };
                          } else {
                            reset();
                          }
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.black,
                            )),
                        backgroundColor: cores[3],
                        fixedSize: const Size(140, 60)),
                    child: const Text(
                      'Comandos',
                      style: TextStyle(
                        fontFamily: "upheavtt",
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: fim,
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.black,
                        )),
                    backgroundColor: cores[4],
                    fixedSize: const Size(300, 60)),
                child: Text(
                  textos[5],
                  style: const TextStyle(
                    fontFamily: "upheavtt",
                    fontSize: 15,
                    color: Colors.black,
                  ),
                )),
          )
        ],
      ));
    }));
  }

  void reset() {
    textos = ['', '', '', '', '', 'Aguardando'];
    cores = [
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
      Colors.white,
    ];

    cont = 0;
  }
}
