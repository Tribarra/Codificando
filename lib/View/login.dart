import 'package:codificando/View/cadastro.dart';
import 'package:codificando/View/linguagens.dart';
import 'package:codificando/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _recoveremailcontroller;

  List<String?> errormessage = [null, null];

  @override
  void initState() {
    super.initState();

    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _recoveremailcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<UserModel>(
        builder: ((context, child, model) {
          if (model.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return GestureDetector(
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
                                        text: 'login.',
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
                          padding: const EdgeInsets.only(left: 25),
                          child: SizedBox(
                            width: 300,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
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
                                decoration: InputDecoration(
                                  errorText: errormessage[0],
                                  errorStyle: const TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 12,
                                    fontFamily: 'upheavtt',
                                  ),
                                  labelText: '"email"',
                                  labelStyle: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontFamily: 'upheavtt',
                                  ),
                                  constraints:
                                      const BoxConstraints(maxHeight: 30),
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: SizedBox(
                            width: 300,
                            height: 90,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
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
                                decoration: InputDecoration(
                                  errorText: errormessage[1],
                                  errorStyle: const TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 12,
                                    fontFamily: 'upheavtt',
                                  ),
                                  labelText: '"Senha"',
                                  labelStyle: const TextStyle(
                                    color: Colors.green,
                                    fontSize: 20,
                                    fontFamily: 'upheavtt',
                                  ),
                                  constraints:
                                      const BoxConstraints(maxHeight: 30),
                                  contentPadding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            '}',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontFamily: 'upheavtt',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    errorteste();
                                  });
                                  if (errormessage[0] == null &&
                                      errormessage[1] == null) {
                                    model.signIn(
                                        email: _emailcontroller.text,
                                        pass: _passwordcontroller.text,
                                        onSuccess: _onSuccess,
                                        onFail: _onFail,
                                        onFailInfo: _onFailInfo);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.black,
                                        )),
                                    backgroundColor: Colors.white,
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
                                      Navigator.pushReplacement(
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
                                        backgroundColor: Colors.white,
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
                                        model.signInGoogle(
                                            onSuccess: _onSuccess,
                                            onFail: _onFail);
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: const BorderSide(
                                                color: Colors.black,
                                              )),
                                          backgroundColor: Colors.white,
                                          fixedSize: const Size(140, 50)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/images/logoplay.png',
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => SimpleDialog(
                                            title: const Text(
                                              'Informe seu email',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontFamily: "upheavtt"),
                                            ),
                                            children: <Widget>[
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: SizedBox(
                                                  height: 50,
                                                  child: TextField(
                                                    controller:
                                                        _recoveremailcontroller,
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                    textDirection:
                                                        TextDirection.ltr,
                                                    autocorrect: false,
                                                    cursorColor: Colors.green,
                                                    style: const TextStyle(
                                                      color: Colors.green,
                                                      fontSize: 20,
                                                      fontFamily: 'upheavtt',
                                                    ),
                                                    decoration:
                                                        const InputDecoration(
                                                      labelText: '"email"',
                                                      labelStyle: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 20,
                                                        fontFamily: 'upheavtt',
                                                      ),
                                                      constraints:
                                                          BoxConstraints(
                                                              maxHeight: 30),
                                                      contentPadding:
                                                          EdgeInsets.only(
                                                              left: 10,
                                                              right: 10),
                                                      border: OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: const Text(
                                                          'Cancelar',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.orange,
                                                              fontFamily:
                                                                  "upheavtt"))),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                        setState(() {
                                                          recovererrorteste();
                                                        });

                                                        if (recovererrorteste() ==
                                                            '') {
                                                          model.recoverPass(
                                                              _recoveremailcontroller
                                                                  .text);
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              duration:
                                                                  Duration(
                                                                      seconds:
                                                                          2),
                                                              content: Text(
                                                                'Confira seu email!',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "upheavtt"),
                                                              ),
                                                              backgroundColor:
                                                                  Colors.green,
                                                            ),
                                                          );
                                                        } else {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              duration:
                                                                  const Duration(
                                                                      seconds:
                                                                          2),
                                                              content: Text(
                                                                recovererrorteste(),
                                                                style: const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontFamily:
                                                                        "upheavtt"),
                                                              ),
                                                              backgroundColor:
                                                                  Colors.red,
                                                            ),
                                                          );
                                                        }
                                                      },
                                                      child: const Text(
                                                          'Alterar senha',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color:
                                                                  Colors.green,
                                                              fontFamily:
                                                                  "upheavtt")))
                                                ],
                                              ),
                                            ],
                                          ));
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.black,
                                        )),
                                    backgroundColor: Colors.white,
                                    fixedSize: const Size(300, 50)),
                                child: RichText(
                                    text: const TextSpan(
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                        children: [
                                      TextSpan(
                                          text: 'Esqueceu sua senha? ',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontFamily: "upheavtt")),
                                    ])),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  String recovererrorteste() {
    if (!_recoveremailcontroller.text.contains("@")) {
      return 'Email invalido!';
    } else if (_recoveremailcontroller.text.isEmpty) {
      return 'Campo vazio!';
    } else {
      return '';
    }
  }

  void errorteste() {
    String text = '';
    text = _emailcontroller.text.characters.string;

    if (text.isEmpty == true) {
      errormessage[0] = 'Campo vazio!';
    } else {
      errormessage[0] = null;
    }
    text = _passwordcontroller.text.characters.string;
    if (text.isEmpty == true) {
      errormessage[1] = 'Campo vazio!';
    } else {
      errormessage[1] = null;
    }
  }

  void _onSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          'Login realizado com sucesso!',
          style: TextStyle(color: Colors.white, fontFamily: "upheavtt"),
        ),
        backgroundColor: Colors.green,
      ),
    );
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Linguagens()));
    });
  }

  void _onFailInfo() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          'Email ou senha incorretos!',
          style: TextStyle(color: Colors.white, fontFamily: "upheavtt"),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  void _onFail() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          'Falha ao fazer login!',
          style: TextStyle(color: Colors.white, fontFamily: "upheavtt"),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
