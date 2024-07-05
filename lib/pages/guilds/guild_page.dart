import 'package:duolingoapp/widgets/cards/guild_card_widget.dart';
import 'package:flutter/material.dart';

class GuildPage extends StatelessWidget {
  const GuildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guías"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 10,
        ),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const GuildCardWidget();
        }));
  }
}