import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';
import 'package:whatsap_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsap_clone/feature/auth/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;
  @override
  void initState() {
    countryNameController = TextEditingController(text: 'Peru');
    countryCodeController = TextEditingController(text: '051');
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          'Enter your phone number',
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: context.theme.greyColor,
            ),
            splashColor: Colors.transparent,
            splashRadius: 22,
            iconSize: 22,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 40),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "whatsApp will nee to verify your phone number",
                  style: TextStyle(color: context.theme.greyColor, height: 1.5),
                  children: [
                    TextSpan(
                        text: "What's my number",
                        style: TextStyle(color: context.theme.blueColor))
                  ]),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: CustomTextFiel(
              onTap: () {},
              controller: countryNameController,
              readOnly: true,
              suffixIcon: Icon(
                Icons.arrow_drop_down,
                color: Coloors.greenDark,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextFiel(
                    onTap: () {},
                    controller: countryCodeController,
                    prefixTExt: '+',
                    readOnly: true,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: CustomTextFiel(
                  controller: phoneNumberController,
                  hintText: 'Phone number',
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.number,
                ))
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Icon(Icons.heart_broken_rounded,color:Colors.red,size: 100, ),
          Text('Your are my best Friend and my love Rosy',style: TextStyle(color: context.theme.greyColor),)

        

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(onPressed: () {
        
      }, text: 'NEXT',buttonWidth: 90,),
      
    );
  }
}
