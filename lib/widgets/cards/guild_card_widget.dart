import 'package:flutter/material.dart';


class GuildCardWidget extends StatelessWidget {
  const GuildCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              const SizedBox(
                width: 150,
                height: 150,
                child: CircularProgressIndicator(
                  color: Colors.green,
                  value: 0.5,
                  strokeWidth: 20,
              ),
              ),
              Container(
                width: 150,
                height: 150,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[200]!,
                ),
                child: Image.asset("assets/images/idea.png"),
              ),
            ],
          ),
        ),
        const Text("Introduccion"),
      ],
    );
  }
}