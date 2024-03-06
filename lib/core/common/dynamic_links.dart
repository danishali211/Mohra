import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:starter_application/core/common/type_validators.dart';
import 'package:starter_application/core/constants/app/app_constants.dart';
import 'package:starter_application/core/navigation/nav.dart';
import 'package:starter_application/core/params/screen_params/event_details_screen_params.dart';
import 'package:starter_application/core/params/screen_params/personality_result_screen_params.dart';
import 'package:starter_application/core/params/screen_params/shared_qrcode_screen_params.dart';
import 'package:starter_application/core/params/screen_params/ticket_details_screen_params.dart';
import 'package:starter_application/features/event/presentation/screen/event_details_screen.dart';
import 'package:starter_application/features/event/presentation/screen/ticket_details_screen.dart';
import 'package:starter_application/features/home/presentation/screen/shared_qrcode_screen.dart';
import 'package:starter_application/features/news/data/model/request/news_single_params.dart';
import 'package:starter_application/features/news/presentation/screen/news_single_screen.dart';
import 'package:starter_application/features/personality/presentation/screen/presonality_result_screen.dart';
import 'package:starter_application/features/shop/presentation/screen/store_screens/single_product_screen.dart';

class DynamicLinkService {
  void fetchLinkData({Function(Map<String, dynamic>? params)? onHandle}) async {
    bool handled = false;
    // Get any initial links
    try {
      final PendingDynamicLinkData? initialLink =
          await FirebaseDynamicLinks.instance.getInitialLink();
      if (initialLink != null) {
        handled = handleLinkData(data: initialLink, onHandle: onHandle);
      }
      if (!handled) FirebaseDynamicLinks.instance.onLink;
    } catch (e) {}
  }

  Future<Uri> createDynamicLink({
    required Map<String, dynamic> queryParameters,
    required String type,
  }) async {
    queryParameters[AppConstants.KEY_DYNAMIC_LINKS_TYPE] = type;
    Uri uri = Uri(queryParameters: queryParameters);

    final DynamicLinkParameters parameters = DynamicLinkParameters(
      // The Dynamic Link URI domain. You can view created URIs on your Firebase console
      uriPrefix: AppConstants.KEY_DYNAMIC_LINKS_PREFIX,
      // The deep Link passed to your application which you can use to affect change

      link: Uri.parse(
          '${AppConstants.KEY_DYNAMIC_LINKS_BASE_URL}${uri.toString()}'),

      // Android application details needed for opening correct app on device/Play Store
      androidParameters: AndroidParameters(
        packageName: AppConstants.KEY_PACKAGE_NAME,
        minimumVersion: 1,
      ),
      // iOS application details needed for opening correct app on device/App Store
      /*iosParameters: const IOSParameters(
        bundleId: */ /*iosBundleId*/ /*,
        minimumVersion: '2',
      ),*/
    );

    // final ShortDynamicLink shortLink = await parameters.buildShortLink();
    // return shortLink.shortUrl;
    return Uri();
  }

  bool handleLinkData(
      {required PendingDynamicLinkData data,
      Function(Map<String, dynamic>? params)? onHandle}) {
    final Uri? uri = data.link;
    if (uri != null) {
      final queryParams = uri.queryParameters;
      if (queryParams.length > 0) {
        onHandle?.call(uri.queryParameters);

        if (queryParams[AppConstants.KEY_DYNAMIC_LINKS_TYPE] != null) {
          switch (queryParams[AppConstants.KEY_DYNAMIC_LINKS_TYPE]) {
            case AppConstants.KEY_DYNAMIC_LINKS_EVENT:
              {
                String? id = queryParams["id"];
                if (id != null)
                  Nav.to(EventDetailsScreen.routeName,
                      arguments:
                          EventDetailsScreenParams(sharedId: int.parse(id)));
                break;
              }
            case AppConstants.KEY_DYNAMIC_LINKS_PRODUCTSTORE:
              {
                String? id = queryParams["id"];
                if (id != null)
                  Nav.to(SingleProductScreen.routeName,
                      arguments: SingleProductScreenParam(
                        productId: int.tryParse(id) ?? -1,
                      ));
                break;
              }
            case AppConstants.KEY_DYNAMIC_LINKS_TICKET:
              {
                String? id = queryParams["id"];
                if (id != null)
                  Nav.to(TicketDetailsScreen.routeName,
                      arguments: TicketDetailsScreenParams(
                        id: int.parse(id),
                      ));
                break;
              }
            case AppConstants.KEY_DYNAMIC_LINKS_SINGLE_NEWS:
              {
                String? id = queryParams["id"];
                if (id != null)
                  Nav.to(SingleNewsScreen.routeName,
                      arguments: SingleNewsParams(
                        id: int.parse(id),
                      ));
                break;
              }
            case AppConstants.KEY_DYNAMIC_LINKS_PERSONALITY:
              {
                if (queryParams["gender"] == null ||
                    queryParams["date"] == null) return true;
                int gender = int.parse(queryParams["gender"]!);
                DateTime date = DateTime.parse(queryParams["date"]!);

                Nav.to(PersonalityResultScreen.routeName,
                    arguments: PersonalityResultScreenParams(
                        birthDay: date, gender: gender));
                break;
              }
            case AppConstants.KEY_DYNAMIC_LINKS_QRCODE:
              {
                String qrcode = stringV(queryParams["qrcode"]);
                String name = stringV(queryParams["name"]);
                String location = stringV(queryParams["location"]);
                String image = stringV(queryParams["image"]);

                Nav.to(SharedQrcodeScreen.routeName,
                    arguments: SharedQRCodeScreenParams(
                        qrcode: qrcode,
                        name: name,
                        location: location,
                        image: image));
                break;
              }
          }
          return true;
        }
      }
    }
    return false;
  }
}
