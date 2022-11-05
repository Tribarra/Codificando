import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../models/user_model.dart';

class Linguagens extends StatefulWidget {
  const Linguagens({super.key});

  @override
  State<Linguagens> createState() => _LinguagensState();
}

class _LinguagensState extends State<Linguagens> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<UserModel>(
      builder: (context, child, model) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Scrollbar(
              child: CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: Colors.transparent,
                shadowColor: Colors.black,
                title: Row(children: [
                  Icon(
                    Icons.abc,
                    color: Colors.black,
                  )
                ]),
              )
            ],
          )),
        );
      },
    );
  }
}
