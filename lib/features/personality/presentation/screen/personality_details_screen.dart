import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:provider/provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/common/app_config.dart';
import 'package:starter_application/core/constants/app/app_constants.dart';
import 'package:starter_application/core/models/user_session_data_model.dart';
import 'package:starter_application/core/params/screen_params/personality_result_screen_params.dart';
import 'package:starter_application/core/ui/appbar/appbar.dart';
import 'package:starter_application/features/personality/domain/entity/avatar_entity.dart';
import 'package:starter_application/generated/l10n.dart';
import '../../../../main.dart';
import '../screen/../state_m/provider/personality_details_screen_notifier.dart';
import 'personality_details_screen_content.dart';
import 'dart:ui' as ui;
class PersonalityDetailsScreen extends StatefulWidget {
  static const String routeName = "/PersonalityDetailsScreen";
  final PersonalityResultScreenParams? params;
  const PersonalityDetailsScreen({Key? key , required this.params}) : super(key: key);

  @override
  _PersonalityDetailsScreenState createState() =>
      _PersonalityDetailsScreenState();
}

class _PersonalityDetailsScreenState extends State<PersonalityDetailsScreen> {
  final sn = PersonalityDetailsScreenNotifier();

  @override
  void initState() {
    sn.params = widget.params!;
    sn.getMyAvatar(sn.params);
    super.initState();
  }

  @override
  void dispose() {
    sn.closeNotifier();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<PersonalityDetailsScreenNotifier>.value(
      value: sn,
      child: Screenshot(
        controller: sn.screenshotController,
        child: Directionality(
          textDirection: isArabic ? ui.TextDirection.rtl :ui.TextDirection.ltr ,
          child: Scaffold(
            appBar: buildAppbar(
              actions: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          isArabic = false;
                        });
                      },
                      child: Text(
                        "English",
                        style: TextStyle(
                          color: AppColors.mansourBackArrowColor2,
                          fontSize: 45.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(" | ",style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.sp,
                      fontWeight: FontWeight.bold,
                    ),),
                    InkWell(
                      onTap:(){
                        setState(() {
                          isArabic = true;
                        });
                      },
                      child: Text(
                        "عربي",
                        style: TextStyle(
                          color: AppColors.mansourBackArrowColor2,
                          fontSize: 45.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )]
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppConfig().appLanguage == AppConstants.LANG_EN ? buildAppbarTitle(
                      "${UserSessionDataModel.name} ${isArabic ? "شخصيتك" :"Your Personality"}"):buildAppbarTitle(
                      "${isArabic ? "شخصيتك" :"Your Personality"} ${UserSessionDataModel.name} "),
                ),
                Expanded(
                  child: PersonalityDetailsScreenContent(),
                ),
              ],
            ),



          ),
        ),
      ),
    );
  }
}
