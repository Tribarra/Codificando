import 'package:codificando/View/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _namecontroller;
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _confirmpasswordcontroller;

  @override
  void initState() {
    super.initState();
    _namecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _confirmpasswordcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
              overlays: []);
        },
        child: Scrollbar(
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: RichText(
                          text: const TextSpan(
                              style: TextStyle(fontSize: 40),
                              children: [
                                TextSpan(
                                    text: 'cadastro.',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "upheavtt")),
                                TextSpan(
                                    text: 'txt',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontFamily: "upheavtt")),
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
                                      color: Colors.orange,
                                      fontFamily: "upheavtt")),
                              TextSpan(
                                  text: 'Usuario\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "upheavtt")),
                              TextSpan(
                                  text: '{\n',
                                  style: TextStyle(
                                      color: Colors.orange,
                                      fontFamily: "upheavtt")),
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
                                      color: Colors.orange,
                                      fontFamily: "upheavtt")),
                              TextSpan(
                                  text: 'email =',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "upheavtt")),
                            ])),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                          ),
                          child: SizedBox(
                            width: 125,
                            child: TextField(
                              controller: _emailcontroller,
                              keyboardType: TextInputType.emailAddress,
                              textDirection: TextDirection.ltr,
                              autocorrect: false,
                              cursorColor: Colors.green,
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontFamily: 'upheavtt',
                              ),
                              decoration: const InputDecoration(
                                labelText: '"email"',
                                labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontFamily: 'upheavtt',
                                ),
                                constraints: BoxConstraints(maxHeight: 30),
                                contentPadding:
                                    EdgeInsets.only(left: 10, right: 10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
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
                                      color: Colors.orange,
                                      fontFamily: "upheavtt")),
                              TextSpan(
                                  text: 'senha =',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "upheavtt")),
                            ])),
                        Padding(
                          padding: const EdgeInsets.only(left: 12, top: 12),
                          child: SizedBox(
                            width: 125,
                            child: TextField(
                              controller: _passwordcontroller,
                              keyboardType: TextInputType.emailAddress,
                              textDirection: TextDirection.ltr,
                              autocorrect: false,
                              cursorColor: Colors.green,
                              style: const TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontFamily: 'upheavtt',
                              ),
                              decoration: const InputDecoration(
                                labelText: '"Senha"',
                                labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontFamily: 'upheavtt',
                                ),
                                constraints: BoxConstraints(maxHeight: 30),
                                contentPadding:
                                    EdgeInsets.only(left: 10, right: 10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Text(
                        '}',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontFamily: 'upheavtt',
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Colors.black,
                                    )),
                                primary: Colors.white,
                                fixedSize: const Size(300, 50)),
                            child: RichText(
                                text: const TextSpan(
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                    children: [
                                  TextSpan(
                                      text: 'executar ',
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontFamily: "upheavtt")),
                                  TextSpan(
                                      text: 'login.',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "upheavtt")),
                                  TextSpan(
                                      text: 'txt',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontFamily: "upheavtt")),
                                ])),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
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
                                    fixedSize: const Size(140, 50)),
                                child: RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: 'cadastro.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontFamily: "upheavtt")),
                                      TextSpan(
                                          text: 'txt',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontFamily: "upheavtt")),
                                    ])),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Cadastro()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: const BorderSide(
                                            color: Colors.black,
                                          )),
                                      primary: Colors.white,
                                      fixedSize: const Size(140, 50)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      'assets/images/logoplay.png',
                                    ),
                                  )),
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
