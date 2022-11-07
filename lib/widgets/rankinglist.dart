import 'package:flutter/material.dart';

class RankingList extends StatelessWidget {
  final List<Map<int, String>> people;
  final Color cor;

  const RankingList({super.key, required this.cor, required this.people});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: allWe(people, cor),
    );
  }

  List<Widget> allWe(List<Map<int, String>> people, Color cor) {
    List<Widget> all = [];
    for (var element in people) {
      String nome = element.values.toString();
      String pontos = element.keys.toString();
      nome = nome.replaceAll(r'(', '');
      nome = nome.replaceAll(r')', '');
      pontos = pontos.replaceAll(r'(', '');
      pontos = pontos.replaceAll(r')', '');

      all.add(we(nome, pontos, cor));
    }
    return all;
  }

  Widget we(String nome, String quant, Color cor) {
    return SizedBox(
      width: 260,
      height: 60,
      child: Row(
        children: [
          SizedBox(
              width: 180,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  nome,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'upheavtt',
                    color: cor,
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              Icons.emoji_events_outlined,
              color: cor,
            ),
          ),
          Text(
            quant,
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'upheavtt',
              color: cor,
            ),
          )
        ],
      ),
    );
  }
}
