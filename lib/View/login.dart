import 'package:codificando/View/cadastro.dart';
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

  List<String?> errormessage = [null, null];

  @override
  void initState() {
    super.initState();

    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
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
                                  model.signIn();
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
                            ),
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
}
