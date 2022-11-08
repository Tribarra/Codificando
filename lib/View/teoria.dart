import 'package:flutter/material.dart';

class Teoria extends StatelessWidget {
  const Teoria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Introdução',
            style: TextStyle(
                color: Colors.black, fontFamily: "upheavtt", fontSize: 40)),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.green,
            )),
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Teoria',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: "upheavtt",
                        fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.grey.shade400),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      color: Colors.black,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  style: TextStyle(
                                    fontFamily: "upheavtt",
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                        text: 'C ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            'é uma linguagem de programação procedural. Foi inicialmente desenvolvido por Dennis Ritchie no ano de 1972. Foi desenvolvido principalmente como uma linguagem de programação de sistema para escrever um sistema operacional. Os principais recursos da linguagem '),
                                    TextSpan(
                                        text: 'C ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            'incluem acesso de baixo nível à memória, um conjunto simples de palavras-chave e um estilo limpo. Esses recursos tornam a linguagem '),
                                    TextSpan(
                                        text: 'C ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            'adequada para programações de sistema, como um sistema operacional ou desenvolvimento de compilador.  Muitas linguagens posteriores emprestaram sintaxe / recursos direta ou indiretamente da linguagem '),
                                    TextSpan(
                                        text: 'C. ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(text: 'Como a sintaxe de '),
                                    TextSpan(
                                        text: 'Java, PHP, JavaScript ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            'e muitas outras linguagens são baseadas principalmente na linguagem '),
                                    TextSpan(
                                        text: 'C. C++ ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            'é quase um superconjunto da linguagem '),
                                    TextSpan(
                                        text: 'C ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            '(poucos programas podem ser compilados em '),
                                    TextSpan(
                                        text: 'C, ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(text: 'mas não em '),
                                    TextSpan(
                                        text: 'C++ ',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text:
                                            '\n\n\nEstrutura basica dos programas em C:\n\n'),
                                    TextSpan(text: 'Primeiro: '),
                                    TextSpan(
                                        text: 'Bibliotecas\n',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(text: 'Segundo: '),
                                    TextSpan(
                                        text: 'Funções\n',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        )),
                                    TextSpan(text: 'Terceiro: '),
                                    TextSpan(
                                        text: 'Variaveis\n',
                                        style: TextStyle(
                                          color: Colors.orange,
                                        )),
                                    TextSpan(text: 'Quarto: '),
                                    TextSpan(
                                        text: 'Comandos\n',
                                        style: TextStyle(
                                          color: Colors.red,
                                        )),
                                  ])),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            width: 290,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.grey.shade400),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              color: Colors.black,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                        fontFamily: "upheavtt",
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                      children: [
                                    TextSpan(
                                        text:
                                            '#include <stdio.h>\n#include <stdlib.h>\n\n',
                                        style: TextStyle(
                                          color: Colors.green,
                                        )),
                                    TextSpan(
                                        text: 'main () {\n\n',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        )),
                                    TextSpan(
                                        text:
                                            '   int n1 = 3, n2 = 4, soma;\n\n',
                                        style: TextStyle(
                                          color: Colors.orange,
                                        )),
                                    TextSpan(
                                        text:
                                            '   soma = n1 + n2;\n   printf ( “A soma é: %i” , soma );\n\n',
                                        style: TextStyle(
                                          color: Colors.red,
                                        )),
                                    TextSpan(
                                        text: '}',
                                        style: TextStyle(
                                          color: Colors.blue,
                                        )),
                                  ])),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
