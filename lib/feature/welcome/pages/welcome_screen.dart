import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';

import '../../../common/widgets/custom_elevated_button.dart';
import '../widgets/language_button.dart';
import '../widgets/privacy_and_term.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      body: Column(children: [
        Expanded(child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
            child: Image.asset('assets/images/circle.png',color:context.theme.circleImageColor),
          ),
        )),
        const SizedBox(height: 40,),
        Expanded(child: Column(
          children: [
            const Text('Welcome to my Own Whatsap',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            const SizedBox(height: 20,),
            const PrivacyAndTerms(),
          
          const SizedBox(height: 30,),
            CustomElevatedButton(
              onPressed: (){},
              text: 'AGREE AND CONTINUE',
            ),
            const SizedBox(height: 40,),
            const LanguageButton()
          ],
        ))

      ],),
    );
  }
}
