import 'package:duolingoapp/widgets/text/small_text_widget.dart';
import 'package:duolingoapp/widgets/text/title_widget.dart';
import 'package:flutter/material.dart';

class GuildDetail extends StatefulWidget {
  const GuildDetail({super.key});

  @override
  State<GuildDetail> createState() => _GuildDetailState();
}

class _GuildDetailState extends State<GuildDetail> {

  double dialogCorrect = -200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.close),
                        Container(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          height: 30,
                          child: Stack(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 180, 180, 180),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.favorite,color: Colors.red,),
                      ],
                    ),
                    
                
                    const SizedBox(height: 20,),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            width: MediaQuery.of(context).size.width * 0.5,
                            "assets/images/libro.png",
                          ),
                          const SizedBox(height: 30,),
                          const TitleWidget(title: "Complete la oracion",size: 30,),
                          const SizedBox(height: 30,),
                          const SmallTextWidget(title: "Hola como implementamos el proceso de la informacion"),
                          const SmallTextWidget(title: "Hola como implementamos el proceso de la informacion"),
                
                        ],
                      ),
                    ),
                
                    
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          dialogCorrect = 0.0;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("CONTINUAR",style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),



              AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
                left: 0,
                bottom: dialogCorrect,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: const BoxDecoration(
                    color: Colors.black87,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  dialogCorrect = -200;
                                });
                              },
                              child: const Icon(Icons.close,color: Colors.white,size: 30,),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: const Icon(Icons.check,color: Colors.white,),
                            ),
                            const SizedBox(width: 10,),
                            const SmallTextWidget(title: "Increible!",color: Colors.white,size: 30,),
                            const Spacer(),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(
                          child: Text("CONTINUAR",style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      const SizedBox(height: 1,),
                    ],
                  )
                ),
              ),

            ],
          ),
        
      
    );
  }
}