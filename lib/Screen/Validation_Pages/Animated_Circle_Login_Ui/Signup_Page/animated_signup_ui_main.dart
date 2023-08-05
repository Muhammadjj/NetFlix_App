import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import '../../../../Components/Colour_files/all_screen_color.dart';
import '../Constant_File/colors_file.dart';
import '../Login_Page/animated_login_ui_main.dart';
import '../Login_Page/animated_login_widget.dart';



class AnimatedSignUpPageUI extends StatefulWidget {
  const AnimatedSignUpPageUI({super.key});

  @override
  State<AnimatedSignUpPageUI> createState() => _AnimatedSignUpPageUIState();
}

class _AnimatedSignUpPageUIState extends State<AnimatedSignUpPageUI> with TickerProviderStateMixin {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  
  late Animation<Offset> offsetFirstContainerAnimation;
  late Animation<Offset> offsetRowFirstContainerAnimation;
  late Animation<Offset> offsetRowSecondContainerAnimation;
  late Animation<Offset> offsetThirdContainerAnimation;
  late Animation<Offset> offsetForthContainerAnimation;
  
  // **AnimationControllers 
  late AnimationController firstAnimationController;
  late AnimationController secondAnimationController;

  @override
  void initState() {
    super.initState();
    // ** FIRST ANIMATION CONTROLLER .
    firstAnimationController =AnimationController(vsync: this, duration: const Duration(seconds: 6))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              firstAnimationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              firstAnimationController.forward();
            }
          });
    // ** SECOND ANIMATION CONTROLLER .
    secondAnimationController =AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              secondAnimationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              secondAnimationController.forward();
            }
          });
          

    //** (offsetFirstContainerAnimation).
    offsetFirstContainerAnimation = Tween<Offset>(begin: const Offset(0.4, -0.5), end: const Offset(0.3, -0.6)).animate(firstAnimationController);
    //** (offsetRowFirstContainerAnimation) .
    offsetRowFirstContainerAnimation = Tween<Offset>(begin: const Offset(0.1, 0.0), end: const Offset(0.0, 0.2)).animate(firstAnimationController);
    //** (offsetRowSecondContainerAnimation) .
    offsetRowSecondContainerAnimation = Tween<Offset>(begin: const Offset(0.2, 0.0), end: const Offset(0.0, 0.1)).animate(secondAnimationController);
    // ** (offsetThirdContainerAnimation) .
    offsetThirdContainerAnimation = Tween<Offset>(begin: const Offset(0.2, 0.0), end: const Offset(0.0, 0.2)).animate(secondAnimationController);
    // ** (offsetForthContainerAnimation) .
    offsetForthContainerAnimation = Tween<Offset>(begin: const Offset(-0.8, 0.4), end: const Offset(-0.5, 0.4)).animate(firstAnimationController);


    // ** ya wala First (AnimationController) ko start krny ka laya hm ny AnimationController ka method (forward) use kya ha .
    firstAnimationController.forward();
    // ** ya wala Second (AnimationController) ko start krny ka laya hm ny AnimationController ka method (forward) use kya ha .
    secondAnimationController.forward();
  }

// ** 
  @override
  void dispose() {
    firstAnimationController.dispose();
    secondAnimationController.dispose()
;    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var heightMediaQuery = MediaQuery.of(context).size.height;
    var widthMediaQuery = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back,color: textColor)),

      ),
      backgroundColor: allScreenBackgroundColours,
      body: SingleChildScrollView(
        child: Stack(
          // ** Benefit of (Alignment.center): hm jo bhi work kry ga wo center sa start ho ga 
          alignment: Alignment.center,
          children: [
            // Todo :  Animated Circle Container Boxes .
            Column(
              children: [
                SlideTransition(
                  position: offsetFirstContainerAnimation,
                  child: SizedBox(
                    height: heightMediaQuery*0.35,
                    width: widthMediaQuery*0.8,
                    child: AnimatedCircleContainer(
                      height: heightMediaQuery * 0.5,
                      width: widthMediaQuery * 0.85,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SlideTransition(
                      position: offsetRowFirstContainerAnimation,
                      child: AnimatedCircleContainer(
                          height: heightMediaQuery * 0.16,
                          width: widthMediaQuery * 0.35),
                    ),
                    SlideTransition(
                      position: offsetRowSecondContainerAnimation,
                      child: AnimatedCircleContainer(
                          height: heightMediaQuery * 0.085,
                          width: widthMediaQuery * 0.18),
                    ),
                  ],
                ),
                    // ** ya hm ny height dany ka laya use kya ha .
                    SizedBox(height: heightMediaQuery*0.050,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SlideTransition(
                            position: offsetThirdContainerAnimation,
                            child: AnimatedCircleContainer(
                                height: heightMediaQuery * 0.12,
                                width: widthMediaQuery * 0.26),
                          ),
                        ],
                      ),
                    ),   
         
                
                SlideTransition(
                  position: offsetForthContainerAnimation,
                  child: SizedBox(
                    height: heightMediaQuery*0.35,
                    width: widthMediaQuery*0.8,
                    child: AnimatedCircleContainer(
                      height: heightMediaQuery * 0.5,
                      width: widthMediaQuery * 0.85,
                    ),
                  ),
                ),
              ],
            ),
      
            
            // Todo : Upper Stack Blur TextField Layer.
            Container(
              height: heightMediaQuery*0.95,
              width: widthMediaQuery*0.8,
              color: Colors.transparent,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(children: [
                  // ** Login Text.
                      textAppName(text: "SIGN UP SCREEN"),
                      SizedBox(height: heightMediaQuery*0.15,),
                      Form(
                        key: key,
                        child: Column(
                          children: [
                         BlurTextField(
                          validator: ValidationBuilder(requiredMessage: "Enter your Name").maxLength(20).build(),
                        hintText: "User name",
                        hintStyle:const TextStyle(color: Colors.white,fontWeight: FontWeight.w100,),
                        prefixIcon:const Icon(Icons.person_pin,color: Colors.white,),
                      ),
                      // ** Second TextField.
                      SizedBox(height: heightMediaQuery*0.060,),
                       BlurTextField(
                        validator: ValidationBuilder(requiredMessage: "Enter Email").email("Enter Your Correct Email").build(),
                        hintText: "Email...",
                        hintStyle:const TextStyle(color: Colors.white,fontWeight: FontWeight.w100,),
                        prefixIcon:const Icon(Icons.mark_email_read,color: Colors.white,),
                      ),
                      // ** Third TextField.
                      SizedBox(height: heightMediaQuery*0.060,),
                       BlurTextField(
                        validator: ValidationBuilder().minLength(6).build(),
                        hintText: "Password...",
                        hintStyle:const TextStyle(color: Colors.white,fontWeight: FontWeight.w100,),
                        prefixIcon:const Icon(Icons.password_rounded,color: Colors.white,),
                      ),
                      ],
                        )
                      ),
                      SizedBox(height: heightMediaQuery*0.040,),
                      // ** Blur Buttons.
                     SizedBox(height: heightMediaQuery*0.1,),
                      BlurButtons(
                      onTap: pressLoginButtonShowHomeScreen,  
                      width: widthMediaQuery*0.5,
                      title: "Sign Up",
                     )
                ],),
              ),
              
              )
          ],
        ),
      ),
    );
  }

///** Press Login Button and Check This Validation all Validation  
///** is (true) and Show This (AnimatedLoginScreenUI)
  void pressLoginButtonShowHomeScreen() {
   if (key.currentState!.validate()) {
   Navigator.of(context).pushReplacement(MaterialPageRoute(
     builder: (context) =>const AnimatedLoginScreenUI(),));
   } 
}

}
