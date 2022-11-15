import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsap_clone/common/extension/custom_theme_extension.dart';
import 'package:whatsap_clone/common/utils/coloors.dart';
import 'package:whatsap_clone/common/widgets/custom_elevated_button.dart';
import 'package:whatsap_clone/common/widgets/custom_icon_button.dart';
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

  showCountryCodePicker() {
    showCountryPicker(
        context: context,
        showPhoneCode: true,
        favorite: ['ET'],
        countryListTheme: CountryListThemeData(
            bottomSheetHeight: 600,
            backgroundColor: Theme.of(context).backgroundColor,
            flagSize: 22,
            borderRadius: BorderRadius.circular(20),
            textStyle: TextStyle(color: context.theme.greyColor),
            inputDecoration: InputDecoration(
                labelStyle: TextStyle(color: context.theme.greyColor),
                prefixIcon: Icon(
                  Icons.language,
                  color: Coloors.greenDark,
                ),
                hintText: 'Search country code or name',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: context.theme.greyColor!.withOpacity(0.2),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Coloors.greenDark,
                )))),
        onSelect: (country) {
          countryNameController.text = country.name;
          countryCodeController.text = country.countryCode;
        });
  }

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
        actions: [CustomIconButton(
          onTap: (){},
          icon: Icons.more_vert,

        )],
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
              onTap: showCountryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: const Icon(
                Icons.arrow_drop_down,
                color: Coloors.greenDark,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextFiel(
                    onTap: showCountryCodePicker,
                    controller: countryCodeController,
                    prefixTExt: '+',
                    readOnly: true,
                  ),
                ),
                const SizedBox(
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
          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.heart_broken_rounded,
            color: Colors.red,
            size: 100,
          ),
          Text(
            'Your are my best Friend and my love Rosy',
            style: TextStyle(color: context.theme.greyColor),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(
        onPressed: () {},
        text: 'NEXT',
        buttonWidth: 90,
      ),
    );
  }
}
