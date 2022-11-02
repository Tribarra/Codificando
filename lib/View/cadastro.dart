import 'package:codificando/View/login.dart';
import 'package:codificando/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  List<String?> errormessage = [null, null, null, null];

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
      body: ScopedModelDescendant<UserModel>(builder: (context, child, model) {
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
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: SizedBox(
                                width: 300,
                                height: 90,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: _namecontroller,
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
                                      labelText: '"nome"',
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
                                      errorText: errormessage[1],
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
                                  padding: const EdgeInsets.all(8),
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
                                      errorText: errormessage[2],
                                      errorStyle: const TextStyle(
                                        color: Colors.redAccent,
                                        fontSize: 12,
                                        fontFamily: 'upheavtt',
                                      ),
                                      labelText: '"Nova senha"',
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
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: SizedBox(
                          width: 300,
                          height: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: TextField(
                              obscureText: true,
                              controller: _confirmpasswordcontroller,
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
                                errorText: errormessage[3],
                                errorStyle: const TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 12,
                                  fontFamily: 'upheavtt',
                                ),
                                labelText: '"confirmar senha"',
                                labelStyle: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontFamily: 'upheavtt',
                                ),
                                constraints:
                                    const BoxConstraints(maxHeight: 30),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                border: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, bottom: 15),
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
                              onPressed: () {
                                setState(() {
                                  errorteste();
                                });
                                if (errormessage[0] == null &&
                                    errormessage[1] == null &&
                                    errormessage[2] == null &&
                                    errormessage[3] == null) {
                                  Map<String, dynamic> userData = {
                                    "name": _namecontroller.text,
                                    "email": _emailcontroller.text,
                                  };

                                  model.signUp(
                                      userData: userData,
                                      pass: _passwordcontroller.text,
                                      onSuccess: _onSuccess,
                                      onFail: _onFail,
                                      onFailEmail: _onFailEmail);
                                }
                              },
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
                                        text: 'Salvar ',
                                        style: TextStyle(
                                            color: Colors.orange,
                                            fontFamily: "upheavtt")),
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
                                          builder: (context) => const Login()),
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
                                  child: RichText(
                                      text: const TextSpan(
                                          style: TextStyle(
                                            fontSize: 20,
                                          ),
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
                                      ])),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: ElevatedButton(
                                    onPressed: () {
                                      model.getUser(
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
        );
      }),
    );
  }

  void errorteste() {
    String text = '';
    text = _namecontroller.text.characters.string;

    if (text.isEmpty == true) {
      errormessage[0] = 'Campo vazio!';
    } else {
      errormessage[0] = null;
    }
    text = _emailcontroller.text.characters.string;
    if (text.isEmpty == true) {
      errormessage[1] = 'Campo vazio!';
    } else if (!text.contains('@')) {
      errormessage[1] = 'email invalido!';
    } else {
      errormessage[1] = null;
    }
    text = _passwordcontroller.text.characters.string;
    if (text.isEmpty == true) {
      errormessage[2] = 'Campo vazio!';
    } else {
      errormessage[2] = null;
    }
    text = _confirmpasswordcontroller.text.characters.string;
    if (text.isEmpty == true) {
      errormessage[3] = 'Campo vazio!';
    } else if (text != _passwordcontroller.text.characters.string &&
        text != '') {
      errormessage[3] = 'senhas diferentes!';
    } else {
      errormessage[3] = null;
    }
  }

  void _onSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        content: Text(
          'Cadastro realizado com sucesso!',
          style: TextStyle(color: Colors.white, fontFamily: "upheavtt"),
        ),
        backgroundColor: Colors.green,
      ),
    );
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  void _onFailEmail() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Email ja foi utilizado!',
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
          'Falha ao cadastrar!',
          style: TextStyle(color: Colors.white, fontFamily: "upheavtt"),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
