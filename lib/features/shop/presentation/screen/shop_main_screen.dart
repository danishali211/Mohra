import 'package:badges/badges.dart' as Badge1;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/common/app_config.dart';
import 'package:starter_application/core/common/provider/cart.dart';
import 'package:starter_application/core/common/provider/session_data.dart';
import 'package:starter_application/core/constants/app/app_constants.dart';
import 'package:starter_application/core/errors/app_errors.dart';
import 'package:starter_application/core/params/no_params.dart';
import 'package:starter_application/core/results/result.dart';
import 'package:starter_application/di/service_locator.dart';
import 'package:starter_application/features/account/domain/entity/city_entity.dart';
import 'package:starter_application/features/home/presentation/state_m/provider/app_main_screen_notifier.dart';
import 'package:starter_application/features/shop/data/model/response/get_taxfee_model.dart';
import 'package:starter_application/features/shop/domain/usecase/get_taxfee_usecse.dart';
import 'package:starter_application/features/shop/presentation/screen/shop_screen/shoe_home_screen.dart';
import 'package:starter_application/features/shop/presentation/screen/store_screens/cart_screen.dart';
import 'package:starter_application/features/shop/presentation/screen/store_screens/following_screen.dart';
import 'package:starter_application/features/shop/presentation/screen/store_screens/home_screen.dart';
import 'package:starter_application/features/shop/presentation/screen/store_screens/order_screen.dart';
import 'package:starter_application/features/shop/presentation/state_m/provider/shop_main_screen_notifer.dart';
import 'package:starter_application/features/user/data/model/request/get_city_params.dart';
import 'package:starter_application/features/user/domain/usecase/get_all_city_usecase.dart';
import 'package:starter_application/generated/l10n.dart';

class ShopMainScreen extends StatefulWidget {
  static const routeName = "/ShopMainScreen";

  const ShopMainScreen({Key? key}) : super(key: key);

  @override
  _ShopMainScreenState createState() => _ShopMainScreenState();
}

class _ShopMainScreenState extends State<ShopMainScreen> {
  late ShopMainScreenNotifier sn =
      AppConfig().appContext.read<ShopMainScreenNotifier>();
  late Cart cart = Provider.of<Cart>(context, listen: true);

  initCities() async {
    final results = await Future.wait([
      getIt<GetAllCityUseCase>()(
        GetCityParams(type: 1, maxResultCount: 1000),
      ),
      getIt<GetTaxFeeUseCase>()(NoParams()),
    ]);
    final error = checkError(results);
    if (error != null) {
      Future.wait([
        getIt<GetAllCityUseCase>()(
          GetCityParams(type: 1, maxResultCount: 1000),
        ),
        getIt<GetTaxFeeUseCase>()(NoParams()),
      ]);
    } else {
      late SessionData session =
          Provider.of<SessionData>(AppConfig().appContext, listen: false);
      if (results[0].data is CityListEntity)
        session.cities = (results[0].data as CityListEntity).items;
      if (results[1].data is GetSettingModel)
        session.getSettingModel = results[1].data as GetSettingModel;
    }
  }

  AppErrors? checkError<T>(List<Result<AppErrors, T>> results) {
    for (int i = 0; i < results.length; i++) {
      if (results[i].hasErrorOnly) return results[i].error;
    }
    return null;
  }

  PageController controller = PageController();

  @override
  void initState() {
    super.initState();
    initCities();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      sn.setPageController(controller);
    });

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      if (sn.controller.page != 0 || sn.selectedIndex != 0)
        sn.onBottomNavigationTap(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    sn = Provider.of<ShopMainScreenNotifier>(context);
    return WillPopScope(
      onWillPop: sn.willPopCallback,
      child: Scaffold(
        body: PageView(
          controller: controller,
          children: [
            const StoreHomePage(),
            const OrderScreen(),
            const CartScreen(),
            const FollowingScreen()
          ],
          onPageChanged: (page) {
            sn.selectedIndex = page;
          },
        ),
        bottomNavigationBar: Builder(builder: (context) {
          sn.context = context;
          return Container(
            height: AppConstants.bottomNavigationBarHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r),
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      AppColors.mansourNotSelectedBorderColor.withOpacity(0.3),
                  blurRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.r),
                topRight: Radius.circular(40.r),
              ),
              child: _buildBottomNavigationbar(),
            ),
          );
        }),
        extendBody: true,
      ),
    );
  }

  Widget _buildBottomNavigationbar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      items: navItems.map((e) => _buildBottomNavigationBarItem(e)).toList(),
      selectedLabelStyle: TextStyle(
        color: AppColors.primaryColorLight,
        fontSize: 35.sp,
      ),
      unselectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 35.sp,
      ),
      currentIndex: sn.selectedIndex,
      selectedItemColor: AppColors.primaryColorLight,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: sn.onBottomNavigationTap,
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      Map<int, dynamic> item) {
    int index = navItems.indexOf(item);
    return BottomNavigationBarItem(
      icon: Badge1.Badge(
        position: Badge1.BadgePosition.topEnd(top: -8, end: -8),
        showBadge: index == 2,
        badgeStyle: Badge1.BadgeStyle(
          shape: Badge1.BadgeShape.circle,
          badgeColor: AppColors.primaryColorLight,
        ),
        badgeContent: Text(
          cart.productsCount.toString(),
          style: TextStyle(fontSize: 25.sp, color: Colors.white),
        ),
        child: SvgPicture.asset(
          item[AppMainScreenNotifier.NAV_ICON],
          color: sn.selectedIndex == index
              ? AppColors.primaryColorLight
              : Colors.black,
        ),
      ),
      label: item[AppMainScreenNotifier.NAV_TITLE],
    );
  }

  List<Map<int, dynamic>> navItems = [
    {
      AppMainScreenNotifier.NAV_ICON: AppConstants.SVG_HOME_FILL,
      AppMainScreenNotifier.NAV_TITLE: Translation.current.home,
    },
    {
      AppMainScreenNotifier.NAV_ICON: AppConstants.SVG_SHOP_ORDER,
      AppMainScreenNotifier.NAV_TITLE: Translation.current.order,
    },
    {
      AppMainScreenNotifier.NAV_ICON: AppConstants.SVG_SHOP_CART,
      AppMainScreenNotifier.NAV_TITLE: Translation.current.cart,
    },
    {
      AppMainScreenNotifier.NAV_ICON: AppConstants.SVG_SHOP_FOLLOWING,
      AppMainScreenNotifier.NAV_TITLE: Translation.current.following,
    },
  ];
}
