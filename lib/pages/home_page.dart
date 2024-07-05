import 'package:duolingoapp/pages/guilds/guild_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("go to guild"),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => GuildPage())
              );
            }, child: const Text("Guilds")),
          ],
        ),
      )
    );
  }
}