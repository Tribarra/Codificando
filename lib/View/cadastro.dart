import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  late TextEditingController _nomecontroller;
  late TextEditingController _emailcontroller;

  @override
  void initState() {
    super.initState();
    _nomecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
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
                TextField(
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 168, 168),
                    fontSize: 18,
                    fontFamily: 'Capsuula',
                  ),
                  textAlignVertical: TextAlignVertical.top,
                  controller: _nomecontroller,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 0, 168, 168),
                      fontSize: 18,
                      fontFamily: 'Capsuula',
                    ),
                    labelText: 'Senha:',
                    border: InputBorder.none,
                  ),
                )
              ]),
            ),
          ])),
    );
  }
}
