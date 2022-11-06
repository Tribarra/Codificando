import 'package:codificando/View/atividades.dart';
import 'package:codificando/View/perfil.dart';
import 'package:codificando/View/ranking.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  PageController? _pageController;

  int _page = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            _page = value;
          });
        },
        controller: _pageController,
        children: const <Widget>[Atividades(), Ranking(), Perfil()],
      ),
      bottomNavigationBar: BottomNavigationBarTheme(
        data: const BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.green,
            unselectedLabelStyle: TextStyle(fontFamily: 'upheavtt'),
            selectedLabelStyle: TextStyle(fontFamily: 'upheavtt')),
        child: BottomNavigationBar(
            currentIndex: _page,
            onTap: (value) {
              _pageController?.animateToPage(value,
                  duration: const Duration(milliseconds: 1000),
                  curve: Curves.ease);
            },
            items: const [
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
