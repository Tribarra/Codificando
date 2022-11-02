import 'package:codificando/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoped_model/scoped_model.dart';
import 'View/home.dart';

void main() {
  runApp(const Codificando());
}

class Codificando extends StatelessWidget {
  const Codificando({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return ScopedModel<UserModel>(
      model: UserModel(),
      child: const MaterialApp(
        title: 'Codificando',
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
