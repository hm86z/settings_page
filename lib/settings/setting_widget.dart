import 'package:flutter/material.dart';

class SettingBoxUi extends StatelessWidget {


  final String title;
  final String? subTitle;

  final String imagePath;
  final bool isThereArrow;


  const SettingBoxUi({
    this.isThereArrow=true ,
    required this.imagePath,
    this.subTitle,
    required this.title ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      ///https://www.tiktok.com/@professional__programmer

      Padding(
        padding: const EdgeInsets.only(bottom: 24.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CircleAvatar(
                radius: 20 ,
                backgroundColor: Colors.grey.shade300,
                child: Image.asset(imagePath,width: 24, height: 24 , fit: BoxFit.fill,),
              ),



             const SizedBox(width: 14,),


              Expanded(
                  child:

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Expanded(child: Text(title  , style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                      if (subTitle!=null) Text(subTitle!, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Theme.of(context).hintColor) ,),

                    ],
                  )),
              const SizedBox(width: 114,),
              if (isThereArrow) const Icon(Icons.arrow_forward_ios,size: 14)

            ],
          ),
        ),
      );
    //   },
    // );
  }
}
