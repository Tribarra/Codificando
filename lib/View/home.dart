import 'package:codificando/View/cadastro.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(15),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(fontSize: 40),
                        children: [
                          TextSpan(
                              text: 'Cod',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt")),
                          TextSpan(
                              text: 'if',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                          TextSpan(
                              text: 'icando',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt"))
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
                              text: '(',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                          TextSpan(
                              text: 'Usando_Esse_App == ',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt")),
                          TextSpan(
                              text: 'True',
                              style: TextStyle(
                                  color: Colors.green, fontFamily: "upheavtt")),
                          TextSpan(
                              text: ')\n',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                          TextSpan(
                              text: '{\n',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                          TextSpan(
                              text: '\n\n\n\n\n\n   Cérebro.',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt")),
                          TextSpan(
                              text: 'set_conhecimento',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                          TextSpan(
                              text: '(\n',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt")),
                          TextSpan(
                              text: '   "Linguagens de programação"\n',
                              style: TextStyle(
                                  color: Colors.green, fontFamily: "upheavtt")),
                          TextSpan(
                              text: '   );\n',
                              style: TextStyle(
                                  color: Colors.black, fontFamily: "upheavtt")),
                          TextSpan(
                              text: '\n\n\n\n\n\n\n}',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontFamily: "upheavtt")),
                        ]),
                  )),
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cadastro()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                              color: Colors.black,
                            )),
                        primary: Colors.white,
                        fixedSize: const Size(200, 50)),
                    child: const Text("iniciar",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.orange,
                            fontFamily: "upheavtt"))),
              )
            ],
          )),
    );
  }
}
