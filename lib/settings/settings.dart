import 'package:flutter/material.dart';

import '../constants.dart';
import 'setting_widget.dart';



class Settings extends StatelessWidget {
  const Settings({super.key});


  ///https://www.tiktok.com/@professional__programmer


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Settings'),),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child:     SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const SettingBoxUi(
                title:  'App Language',
                subTitle: 'English',
                imagePath: ImagesPaths.appLanguage,
              ),



              const SettingBoxUi(
                title:  'Location',
                imagePath: ImagesPaths.location,
              ),



              const Divider(height: 30),


              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text('Notifications',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              ),


              SwitchListTile(
                title: const Text('Personal',style: TextStyle(fontWeight: FontWeight.w600)) ,
                subtitle: const Text('For any behavior in your Account'),
                value: true,
                onChanged: (value){},
              ),



              SwitchListTile(
                title: const Text('Recommendation',style: TextStyle(fontWeight: FontWeight.w600),) ,
                subtitle: const Text('Recommendation for items'),
                value: true,
                onChanged: (value){},
              ),


              SwitchListTile(
                title: const Text('Promotions',style: TextStyle(fontWeight: FontWeight.w600)) ,
                subtitle: const Text('Notifications related to promotions'),
                value: false,
                onChanged: (value){},
              ),


              const Divider(height: 50),



              const SettingBoxUi(
                title:  'Change Password',
                imagePath: ImagesPaths.changePassword,
              ),




              const SettingBoxUi(
                title: 'Rate The App',
                imagePath: ImagesPaths.rateTheApp,
              ),




              const SettingBoxUi(
                title: 'Help and Support',
                imagePath: ImagesPaths.helpSupport,
              ),





              const SettingBoxUi(
                title: 'Feedback Contact Us',
                imagePath: ImagesPaths.feedbackContactUs,
              ),




              const SettingBoxUi(
                  title:  'About Us and Privacy Policy',
                  imagePath: ImagesPaths.aboutUsPrivacyPolicy,

              ),



              const Divider(height: 50),


              Center(
                child: Text( 'App Version: v1.0.0',
                  style: TextStyle(fontSize: 14,color: Theme.of(context).hintColor),),
              ),


              const SizedBox(height: 50,),
              const Center(
                child: Text('Developed by Hamza Alzibaq',textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,color: Colors.blue,fontWeight: FontWeight.w900),
                ),
              ),


              const SizedBox(height: 60,),

            ],
          ),
        ),
      ),
    );
  }
}

