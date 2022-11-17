
import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsap_clone/feature/auth/widgets/custom_text_field.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({super.key});

  @override
  State<UserInfoScreen> createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text('Profile info',style: TextStyle(color: context.theme.greyColor),),
      ),
      body: SingleChildScrollView(
      
        
        // padding: const EdgeInsets.symmetric(horizontal: 20),
       
        child: SizedBox(
          width: double.infinity,
          child: Column(
            
            children: [
              
            Text('Please provide your name and optional profile photo',textAlign: TextAlign.end,style: TextStyle(color: context.theme.greyColor),
            
            
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(26),
              decoration:   BoxDecoration(
                shape: BoxShape.circle,
                color:context.theme.photoIconBgcolor,
              ),
              child:   Padding(
                
                padding: const EdgeInsets.only(bottom: 3,right: 3),
                child: Icon(Icons.add_a_photo_rounded,size: 48,color: context.theme.photoIconColor,),

              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 40,),
                const Expanded(child:   CustomTextFiel(
                  hintText: 'type your name',
                  textAlign: TextAlign.left,
                  autoFocus: true,
                )),
                const SizedBox(width: 10,),
                Icon(Icons.emoji_emotions_outlined,color: context.theme.photoIconColor,),
                const SizedBox(width: 40,)
                
              ],
            )
          ],),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(onPressed: (){},
      
      text: 'NEXT',
      buttonWidth: 90,
      ),

    );
  }
}