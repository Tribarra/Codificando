import 'package:codificando/widgets/tema.dart';
import 'package:flutter/material.dart';

class Atividades extends StatefulWidget {
  const Atividades({super.key});

  @override
  State<Atividades> createState() => _AtividadesState();
}

class _AtividadesState extends State<Atividades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    'assets/images/c.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                Column(
                  children: const [Tema()],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
