import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/constants/app/app_constants.dart';
import 'package:starter_application/core/navigation/nav.dart';
import 'package:starter_application/generated/l10n.dart';
import '../screen/../state_m/provider/dream_screen_notifier.dart';
import 'dream_screen_content.dart';

class DreamScreen extends StatefulWidget {
  static const String routeName = "/DreamScreen";

  const DreamScreen({Key? key}) : super(key: key);

  @override
  _DreamScreenState createState() => _DreamScreenState();
}

class _DreamScreenState extends State<DreamScreen> {
  final sn = DreamScreenNotifier();

  @override
  void initState() {
    super.initState();
    sn.getDreamList();

  }

  @override
  void dispose() {
    sn.closeNotifier();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DreamScreenNotifier>.value(
      value: sn,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            Translation.current.my_dreams,
            style: TextStyle(
                fontSize: 55.sp,
                color: AppColors.black_text,
                fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
              onTap: () {
                Nav.pop();
              },
              child:  Icon(
                AppConstants.getIconBack(),
                color: Colors.black,
              )),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: DreamScreenContent(),
      ),
    );
  }
}
