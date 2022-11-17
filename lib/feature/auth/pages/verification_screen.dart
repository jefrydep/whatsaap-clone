import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/widgets/custom_icon_button.dart';
import 'package:whatsap_clone/feature/auth/widgets/custom_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

late TextEditingController codeController;

@override
  void initState() {
    codeController = TextEditingController();
    super.initState();
  }
@override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text(
          'Verify your Number',
          style: TextStyle(
            color: context.theme.authAppbarTextColor,
          ),
        ),
        actions: [CustomIconButton(onTap: () {}, icon: Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                            color: context.theme.greyColor, height: 1.5),
                        children: [
                          const TextSpan(
                              text:
                                  'You have tried to register +9584938484849 . before requesting an SMS or call whit your code'),
                          TextSpan(
                              text: 'Wrong number?',
                              style: TextStyle(color: context.theme.blueColor))
                        ]))),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: CustomTextFiel(
                controller: codeController,
                fontSize: 30,
                autoFocus: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
                hintText: '- - - - - -',
              ),
            ),
            const SizedBox(height: 20,),
            Text('Enter 6-digit- code',style: TextStyle(color: context.theme.greyColor),),


            const SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.message,color: context.theme.greyColor,),
                const SizedBox(width: 20,),
                Text('Resend SMS',style: TextStyle(
                  color: context.theme.greyColor
                ),)
              ],
            ),
            const SizedBox(height: 10,),
            Divider(
              color: context.theme.blueColor!.withOpacity(0.2),
            ),
              Row(
              children: [
                Icon(Icons.call,color: context.theme.greyColor,),
                const SizedBox(width: 20,),
                Text('Call me',style: TextStyle(
                  color: context.theme.greyColor
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
