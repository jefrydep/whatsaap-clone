
import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);
  showBottomSheet(context){
    return showModalBottomSheet(context: context, builder: (context){
      return  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 4,
            width: 30,
            decoration: BoxDecoration(
              color: context.theme.greyColor!.withOpacity(0.4),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              IconButton(onPressed: (){
                Navigator.of(context).pop();
              }, icon: Icon(Icons.close_outlined)),
              SizedBox(width: 10,),
              Text('App Language',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(height: 10,),
          Divider(
            color: context.theme.greyColor!.withOpacity(0.3),
            thickness: .5,
          ),
          RadioListTile(value: true, groupValue: true, onChanged: (value){},
          activeColor: Coloors.greenDark,title: Text('English',style: TextStyle(color: context.theme.greyColor),),subtitle: const Text("(Phone's language)"),),
           RadioListTile(value: true, groupValue: false, onChanged: (value){},
          activeColor: Coloors.greenDark,title: Text('Portuguese',style: TextStyle(color: context.theme.greyColor),),subtitle: const Text("(Euchi Mano Macaquiño)"),)

        ],
      );
      
    });
  }




  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
        child: InkWell(
        
          
          onTap: ()=> showBottomSheet(context),
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: context.theme.langBtnHightColor,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:const  [
            
            Icon(
              Icons.language,
              color: Coloors.greenDark,
            ),
            SizedBox(width: 10,),
            Text('English'),
            Icon(Icons.keyboard_arrow_down,color: Coloors.greenDark),
            
          ],),
        ),
      ),
    );
  }
}
