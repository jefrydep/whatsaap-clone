
import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xff182229),
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
        child: InkWell(
          
          onTap: (){},
          borderRadius: BorderRadius.circular(20),
          splashFactory: NoSplash.splashFactory,
          highlightColor: const Color(0xff09141a),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children:const  [
            
            Icon(
              Icons.language,
              color: Color(0xff00a884),
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
