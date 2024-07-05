
import 'package:duolingoapp/widgets/animations/animated_container_widget.dart';
import 'package:duolingoapp/widgets/text/small_text_widget.dart';
import 'package:duolingoapp/widgets/text/title_widget.dart';
import 'package:flutter/material.dart';


class SplashGift extends StatefulWidget {
  const SplashGift({super.key});
  @override
  State<SplashGift> createState() => _SplashGiftState();
}

class _SplashGiftState extends State<SplashGift> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _firstAnimation;
  late Animation<double> _secondAnimation;

  double opacity = 0.0;
  bool activateAnimations = false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2), 
      vsync: this
    );

    _firstAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0,0.5)),
    );
    _secondAnimation = Tween<double>(begin: 0,end: 50).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.0, 0.8)),
    );
    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    AnimatedContainerWidget(childWidget: TitleWidget(title: "Felicidades por terminar la leccion de la Guia")),
                  ],
                ),
              ), 
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Image.asset("assets/images/gift.gif",width: MediaQuery.of(context).size.width * 0.7,),
                  ],
                ),
              ), 
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    TweenAnimationBuilder(
                      tween: Tween(begin: 1.0, end: 1.2), 
                      curve: Curves.easeIn,
                      duration: const Duration(seconds: 1),
                      builder: (_,value,__) {
                        return Transform.scale(
                          scale: value,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: const Text(
                              "Nivel Experto",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),);
                      }
                    ),
                    const SizedBox(height: 40,),
                    const AnimatedContainerWidget(childWidget: SmallTextWidget(title: "Haz recibido una condecoracion")),
                  ],
                ),
              ),      
            ],
          ),
        ),
      ),
    );
  }
}