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
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 30,
                    width: 125,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(59, 0, 0, 0),
                            offset: Offset(0, 0),
                            blurRadius: 3)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontFamily: 'upheavtt',
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
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
