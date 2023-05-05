import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/homeView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class splashBody extends StatefulWidget{
  const splashBody();

  @override
  State<splashBody> createState() => _splashBodyState();
}

class _splashBodyState extends State<splashBody> with
    SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState(){
    super.initState();
    initSlidingAnimation();
    Future.delayed(const Duration(seconds: 4),(){
      Get.to(()=> homeView(),
          transition:Transition.fade,
          duration:KTransitionDuration,);
    });
  }

  void initSlidingAnimation() {
     animationController = AnimationController(
        vsync: this ,
        duration: KTransitionDuration);
    slidingAnimation = Tween<Offset>(
        begin: Offset(0,2),
        end:Offset.zero ).animate(animationController);
       animationController.forward();
  }
  @override
  void dispose(){
    animationController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.stretch,
     children: [
        Image.asset(KPrimaryLogo),
       SizedBox(height: 10,),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position:slidingAnimation,
              child: Text('READ A FREE BOOKS 📚',
              textAlign: TextAlign.center,
                style: TextStyle(
                   color: Colors.white54 ,
                  fontSize:18,
              ),),
            );
          }
        )
     ],
    );
  }
}