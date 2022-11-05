import 'package:codificando/View/atividades.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const <Widget>[Atividades()],
      ),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
            unselectedLabelStyle: TextStyle(fontFamily: 'upheavtt'),
            selectedLabelStyle: TextStyle(fontFamily: 'upheavtt')),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.code_rounded), label: 'Atividades'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_rounded), label: 'Ranking'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded), label: 'Perfil')
        ]),
      ),
    );
  }
}
