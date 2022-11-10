import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';

extension ExtendedTheme on BuildContext{
  CustomThemeExtension get theme {
    return Theme.of(this).extension<CustomThemeExtension>()!;
  }
}



  class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {

    static const lightMode = CustomThemeExtension(
      circleImageColor: Color(0xff25d366),
      greyColor: Coloors.greyLight,
      blueColor: Coloors.blueLight,
      langBtnBgColor: Color(0xfff7f8fa),
      langBtnHightColor: Color(0xffe8e8ed),
      authAppbarTextColor: Coloors.greenlight
    );

    
    static const darkMode = CustomThemeExtension(
      circleImageColor: Coloors.greenDark,
      greyColor: Coloors.greyDark,
      blueColor: Coloors.blueDark,
      langBtnBgColor: Color(0xff182229),
      langBtnHightColor: Color(0xff09141a),
      authAppbarTextColor: Color(0xffe9edef),
      
    );





  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHightColor;
  final Color? authAppbarTextColor;

  const CustomThemeExtension(
      {this.circleImageColor,
      this.greyColor,
      this.blueColor,
      this.langBtnBgColor,
      this.langBtnHightColor,
      this.authAppbarTextColor});

  @override
  ThemeExtension<CustomThemeExtension> copyWith(
    {Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHightColor,
    Color? authAppbarTextColor,
    }
  ) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: circleImageColor ?? this.circleImageColor,
      langBtnHightColor: langBtnHightColor ?? this.langBtnHightColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
    );
     
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      ThemeExtension<CustomThemeExtension>? other, double t) {
    if(other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor,t),
      greyColor: Color.lerp(greyColor, other.greyColor,t),
      blueColor: Color.lerp(blueColor, other.blueColor,t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor,t),
      langBtnHightColor: Color.lerp(langBtnHightColor, other.langBtnHightColor,t),
      authAppbarTextColor: Color.lerp(authAppbarTextColor, other.authAppbarTextColor,t),
    );
     
  }
}
