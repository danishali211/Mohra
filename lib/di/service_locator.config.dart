// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i130;
import 'package:shared_preferences/shared_preferences.dart' as _i150;

import '../core/common/style/text_styles.dart' as _i3;
import '../core/localization/localization_provider.dart' as _i129;
import '../core/navigation/navigation_service.dart' as _i138;
import '../core/navigation/route_generator.dart' as _i137;
import '../core/net/http_client.dart' as _i4;
import '../core/net/spotify/spotify_http_client.dart' as _i151;
import '../core/theme/theme_config.dart' as _i152;
import '../features/account/data/datasources/account_remote.dart' as _i6;
import '../features/account/data/datasources/iaccount_remote.dart' as _i5;
import '../features/account/data/repository/account_repository.dart' as _i8;
import '../features/account/domain/repository/iaccount_repository.dart' as _i7;
import '../features/account/domain/usecase/check_device_id_usecase.dart'
    as _i187;
import '../features/account/domain/usecase/check_exist_email_usecase.dart'
    as _i192;
import '../features/account/domain/usecase/check_exist_phone_usecase.dart'
    as _i193;
import '../features/account/domain/usecase/check_exist_username_usecase.dart'
    as _i194;
import '../features/account/domain/usecase/confirm_password_code_usecase.dart'
    as _i200;
import '../features/account/domain/usecase/confirm_phone_number_usecase.dart'
    as _i202;
import '../features/account/domain/usecase/ConfirmPassword_usecase.dart'
    as _i201;
import '../features/account/domain/usecase/forgetPassword_usecase.dart'
    as _i237;
import '../features/account/domain/usecase/get_client_profile_usecase.dart'
    as _i250;
import '../features/account/domain/usecase/get_nearby_clients_usecase.dart'
    as _i291;
import '../features/account/domain/usecase/login_usecase.dart' as _i131;
import '../features/account/domain/usecase/login_with_google_usecase.dart'
    as _i132;
import '../features/account/domain/usecase/logout_usecase.dart' as _i133;
import '../features/account/domain/usecase/register_usecase.dart' as _i140;
import '../features/account/domain/usecase/register_with_google_usecase.dart'
    as _i141;
import '../features/account/domain/usecase/update_firebase_token_usecase.dart'
    as _i160;
import '../features/account/domain/usecase/update_location_usecase.dart'
    as _i164;
import '../features/account/domain/usecase/verify_usecase.dart' as _i172;
import '../features/booking/data/datasource/home_services_remote.dart' as _i46;
import '../features/booking/data/datasource/ihome_services_remote.dart' as _i45;
import '../features/booking/data/repository/home_services_repository.dart'
    as _i50;
import '../features/challenge/data/datasource/challenge_remote.dart' as _i10;
import '../features/challenge/data/datasource/ichallenge_remote.dart' as _i9;
import '../features/challenge/data/repository/challenge_repository.dart'
    as _i12;
import '../features/challenge/domain/repository/ichallenge_repository.dart'
    as _i11;
import '../features/challenge/domain/usecase/claim_rewards_usecase.dart'
    as _i196;
import '../features/challenge/domain/usecase/get_challange_uscase.dart'
    as _i241;
import '../features/challenge/domain/usecase/get_challenge_details_usecase.dart'
    as _i249;
import '../features/challenge/domain/usecase/invite_friends_usecase.dart'
    as _i126;
import '../features/challenge/domain/usecase/join_usecase.dart' as _i127;
import '../features/comment/data/datasource/comment_remote.dart' as _i14;
import '../features/comment/data/datasource/icomment_remote.dart' as _i13;
import '../features/comment/data/repository/comment_repository.dart' as _i16;
import '../features/comment/domain/repository/icomment_repository.dart' as _i15;
import '../features/comment/domain/usecase/comment_usecase.dart' as _i199;
import '../features/comment/domain/usecase/get_comments_usecase.dart' as _i254;
import '../features/event/data/datasource/event_remote.dart' as _i22;
import '../features/event/data/datasource/ievent_remote.dart' as _i21;
import '../features/event/data/repository/event_repository.dart' as _i24;
import '../features/event/domain/repository/ievent_repository.dart' as _i23;
import '../features/event/domain/usecase/check_if_can_pay_usecase.dart'
    as _i191;
import '../features/event/domain/usecase/create_event_ticket_usecase.dart'
    as _i209;
import '../features/event/domain/usecase/create_payment_usecase.dart' as _i214;
import '../features/event/domain/usecase/get_all_events_usecase.dart' as _i268;
import '../features/event/domain/usecase/get_event_categories_usecase.dart'
    as _i263;
import '../features/event/domain/usecase/get_event_ticket_usecase.dart'
    as _i264;
import '../features/event/domain/usecase/get_event_tickets_usecase.dart'
    as _i265;
import '../features/event/domain/usecase/get_event_usecase.dart' as _i267;
import '../features/event/domain/usecase/get_my_running_events_usecase.dart'
    as _i290;
import '../features/event/domain/usecase/scan_ticket_qr_code_usecase.dart'
    as _i146;
import '../features/event_orginizer/data/datasource/event_orginizer_remote.dart'
    as _i18;
import '../features/event_orginizer/data/datasource/ievent_orginizer_remote.dart'
    as _i17;
import '../features/event_orginizer/data/repository/event_orginizer_repository.dart'
    as _i20;
import '../features/event_orginizer/domain/repository/ievent_orginizer_repository.dart'
    as _i19;
import '../features/event_orginizer/domain/usecase/get_event_ticketss_usecase.dart'
    as _i266;
import '../features/event_orginizer/domain/usecase/get_my_running_events_usecase.dart'
    as _i289;
import '../features/event_orginizer/domain/usecase/get_ticket_details_usecase.dart'
    as _i314;
import '../features/event_orginizer/domain/usecase/get_ticket_report_usecase.dart'
    as _i315;
import '../features/event_orginizer/domain/usecase/manual_check_ticketusecase.dart'
    as _i135;
import '../features/event_orginizer/domain/usecase/scan_ticket_qr_code_usecase.dart'
    as _i145;
import '../features/event_orginizer/domain/usecase/search_my_running_events_usecase.dart'
    as _i147;
import '../features/favorite/data/datasource/favorite_remote.dart' as _i26;
import '../features/favorite/data/datasource/ifavorite_remote.dart' as _i25;
import '../features/favorite/data/repository/favorite_repository.dart' as _i28;
import '../features/favorite/domain/repository/ifavorite_repository.dart'
    as _i27;
import '../features/favorite/domain/usecase/create_favorite_usecase.dart'
    as _i210;
import '../features/favorite/domain/usecase/delete_favorite_by_ref_usecase.dart'
    as _i225;
import '../features/favorite/domain/usecase/delete_favorite_usecase.dart'
    as _i226;
import '../features/favorite/domain/usecase/get_favorites_usecase.dart'
    as _i273;
import '../features/friend/data/datasource/friend_remote.dart' as _i30;
import '../features/friend/data/datasource/ifriend_remote.dart' as _i29;
import '../features/friend/data/repository/friend_repository.dart' as _i32;
import '../features/friend/domain/repository/ifriend_repository.dart' as _i31;
import '../features/friend/domain/usecase/add_friend_by_qrcode_usecase.dart'
    as _i174;
import '../features/friend/domain/usecase/approve_friend_request_usecase.dart'
    as _i177;
import '../features/friend/domain/usecase/block_friend_usecase.dart' as _i178;
import '../features/friend/domain/usecase/cancel_friend_request_usecase.dart'
    as _i179;
import '../features/friend/domain/usecase/change_mute_status_usecase.dart'
    as _i181;
import '../features/friend/domain/usecase/delete_friend_usecase.dart' as _i228;
import '../features/friend/domain/usecase/get_clients_usecase.dart' as _i251;
import '../features/friend/domain/usecase/get_clients_without_friends_usecase.dart'
    as _i253;
import '../features/friend/domain/usecase/get_count_friends_and_notifications_usecase.dart'
    as _i256;
import '../features/friend/domain/usecase/get_friend_requests_usecase.dart'
    as _i275;
import '../features/friend/domain/usecase/get_my_friends_to_challenge_usecase.dart'
    as _i287;
import '../features/friend/domain/usecase/get_my_friends_usecase.dart' as _i288;
import '../features/friend/domain/usecase/get_status_friend_usecase.dart'
    as _i308;
import '../features/friend/domain/usecase/reject_friend_request_usecase.dart'
    as _i142;
import '../features/friend/domain/usecase/send_friend_request_usecase.dart'
    as _i149;
import '../features/friend/domain/usecase/unblock_friend_usecase.dart' as _i153;
import '../features/health/data/datasource/health_remote.dart' as _i34;
import '../features/health/data/datasource/ihealth_remote.dart' as _i33;
import '../features/health/data/repository/health_repository.dart' as _i36;
import '../features/health/domain/repository/ihealth_repository.dart' as _i35;
import '../features/health/domain/usecase/answer_quesition_use_case.dart'
    as _i176;
import '../features/health/domain/usecase/check_health_profile_usecase.dart'
    as _i190;
import '../features/health/domain/usecase/create_daily_dish_usecase.dart'
    as _i206;
import '../features/health/domain/usecase/create_daily_session_usecase.dart'
    as _i207;
import '../features/health/domain/usecase/create_health_profile_usecase.dart'
    as _i212;
import '../features/health/domain/usecase/get_daily_dish_list_usecase.dart'
    as _i258;
import '../features/health/domain/usecase/get_daily_session_usecase.dart'
    as _i259;
import '../features/health/domain/usecase/get_dish_by_id_usecase.dart' as _i260;
import '../features/health/domain/usecase/get_dish_list_by_category_usecase.dart'
    as _i261;
import '../features/health/domain/usecase/get_exercises_usecase.dart' as _i269;
import '../features/health/domain/usecase/get_favorite_dishes_usecase.dart'
    as _i270;
import '../features/health/domain/usecase/get_favorite_recipes_usecase.dart'
    as _i271;
import '../features/health/domain/usecase/get_favorite_sessions_usecase.dart'
    as _i272;
import '../features/health/domain/usecase/get_food_categories_usecase.dart'
    as _i274;
import '../features/health/domain/usecase/get_health_dashboard_usecase.dart'
    as _i277;
import '../features/health/domain/usecase/get_questions_usecase.dart' as _i300;
import '../features/health/domain/usecase/get_recipe_list_by_category_usecase.dart'
    as _i302;
import '../features/health/domain/usecase/get_recommended_food.dart' as _i303;
import '../features/health/domain/usecase/get_recommended_session_usecase.dart'
    as _i304;
import '../features/health/domain/usecase/get_sessions_usecase.dart' as _i306;
import '../features/health/domain/usecase/get_user_results_usecase.dart'
    as _i320;
import '../features/health/domain/usecase/update_daily_steps_usecase.dart'
    as _i158;
import '../features/health/domain/usecase/update_daily_water_usecase.dart'
    as _i159;
import '../features/health/domain/usecase/update_goal_usecase.dart' as _i161;
import '../features/health/domain/usecase/update_health_profile_usecase.dart'
    as _i163;
import '../features/health/domain/usecase/upload_image_usecase.dart' as _i171;
import '../features/help/data/datasource/help_remote.dart' as _i38;
import '../features/help/data/datasource/ihelp_remote.dart' as _i37;
import '../features/help/data/repository/help_repository.dart' as _i40;
import '../features/help/domain/repository/ihelp_repository.dart' as _i39;
import '../features/help/domain/usecase/create_contact_us_ticket_use_case.dart'
    as _i205;
import '../features/help/domain/usecase/getAboutUs.dart' as _i238;
import '../features/help/domain/usecase/getAllFaqs.dart' as _i243;
import '../features/help/domain/usecase/getAllReasons.dart' as _i245;
import '../features/home/data/datasource/home_remote.dart' as _i42;
import '../features/home/data/datasource/ihome_remote.dart' as _i41;
import '../features/home/data/repository/home_repository.dart' as _i44;
import '../features/home/domain/repository/ihome_repository.dart' as _i43;
import '../features/home/domain/usecase/get_all_banners_usecase.dart' as _i240;
import '../features/home_services/data/datasource/home_services_remote.dart'
    as _i48;
import '../features/home_services/data/datasource/ihome_services_remote.dart'
    as _i47;
import '../features/home_services/domain/repository/ihome_services_repository.dart'
    as _i49;
import '../features/Interact/data/datasource/iInteraction_remote.dart' as _i51;
import '../features/Interact/data/datasource/Interaction.dart' as _i52;
import '../features/Interact/data/repository/Interaction_repository.dart'
    as _i54;
import '../features/Interact/domain/repository/iInteraction_repository.dart'
    as _i53;
import '../features/Interact/domain/usecase/delete_interact_usecase.dart'
    as _i230;
import '../features/Interact/domain/usecase/get_interactions_list_usecase.dart'
    as _i278;
import '../features/Interact/domain/usecase/interact_usecase.dart' as _i125;
import '../features/like/data/datasource/ilike_remote.dart' as _i55;
import '../features/like/data/datasource/like_remote.dart' as _i56;
import '../features/like/data/repository/like_repository.dart' as _i58;
import '../features/like/domain/repository/ilike_repository.dart' as _i57;
import '../features/like/domain/usecase/like_usecase.dart' as _i128;
import '../features/like/domain/usecase/unlike_usecase.dart' as _i154;
import '../features/location/data/datasource/ilocation_remote.dart' as _i59;
import '../features/location/data/datasource/location_remote.dart' as _i60;
import '../features/location/data/repository/location_repository.dart' as _i62;
import '../features/location/domain/repository/ilocation_repository.dart'
    as _i61;
import '../features/location/domain/usecase/get_locations_lite_usecase.dart'
    as _i280;
import '../features/messages/data/datasource/imessages_remote.dart' as _i63;
import '../features/messages/data/datasource/messages_remote.dart' as _i64;
import '../features/messages/data/repository/messages_repository.dart' as _i66;
import '../features/messages/domain/repository/imessages_repository.dart'
    as _i65;
import '../features/messages/domain/usecase/add_friend_to_group_usecase.dart'
    as _i175;
import '../features/messages/domain/usecase/change_status_group_usecase.dart'
    as _i184;
import '../features/messages/domain/usecase/clear_conversation_messages_usecase.dart'
    as _i197;
import '../features/messages/domain/usecase/clear_group_messages_usecase.dart'
    as _i198;
import '../features/messages/domain/usecase/create_broad_cast_message_usecase.dart'
    as _i204;
import '../features/messages/domain/usecase/create_group_usecase.dart' as _i211;
import '../features/messages/domain/usecase/create_message_usecase.dart'
    as _i213;
import '../features/messages/domain/usecase/delete_friend_from_group_usecase.dart'
    as _i227;
import '../features/messages/domain/usecase/delete_group_usecase.dart' as _i229;
import '../features/messages/domain/usecase/get_conversations_usecase.dart'
    as _i255;
import '../features/messages/domain/usecase/get_groups_usecase.dart' as _i276;
import '../features/messages/domain/usecase/get_messages_usecase.dart' as _i283;
import '../features/messages/domain/usecase/get_rtm_token_usecase.dart'
    as _i317;
import '../features/messages/domain/usecase/get_status_group_usecase.dart'
    as _i309;
import '../features/messages/domain/usecase/get_token_usecase.dart' as _i318;
import '../features/messages/domain/usecase/make_call_notification_usecase.dart'
    as _i134;
import '../features/messages/domain/usecase/read_messages_usecase.dart'
    as _i139;
import '../features/messages/domain/usecase/update_group_usecase.dart' as _i162;
import '../features/mobile_ads/data/datasource/imobile_ads_remote.dart' as _i67;
import '../features/mobile_ads/data/datasource/mobile_ads_remote.dart' as _i68;
import '../features/mobile_ads/data/repository/mobile_ads_repository.dart'
    as _i70;
import '../features/mobile_ads/domain/repository/imobile_ads_repository.dart'
    as _i69;
import '../features/moment/data/datasource/imoment_remote.dart' as _i71;
import '../features/moment/data/datasource/moment_remote.dart' as _i72;
import '../features/moment/data/repository/moment_repository.dart' as _i74;
import '../features/moment/domain/repository/imoment_repository.dart' as _i73;
import '../features/moment/domain/usecase/create_post_usecase.dart' as _i216;
import '../features/moment/domain/usecase/delete_post_usecase.dart' as _i233;
import '../features/moment/domain/usecase/edit_post_usecase.dart' as _i235;
import '../features/moment/domain/usecase/find_place_usecase.dart' as _i236;
import '../features/moment/domain/usecase/get_all_moments_usecase.dart'
    as _i284;
import '../features/moment/domain/usecase/get_points_usecase.dart' as _i297;
import '../features/moment/domain/usecase/report_post_usecase.dart' as _i143;
import '../features/mylife/data/datasource/imylife_remote.dart' as _i75;
import '../features/mylife/data/datasource/mylife_remote.dart' as _i76;
import '../features/mylife/data/repository/mylife_repository.dart' as _i78;
import '../features/mylife/domain/repository/imylife_repository.dart' as _i77;
import '../features/mylife/domain/usecase/check_appointments.dart' as _i186;
import '../features/mylife/domain/usecase/check_task_uescase.dart' as _i195;
import '../features/mylife/domain/usecase/check_un_check_dream_usecase.dart'
    as _i188;
import '../features/mylife/domain/usecase/create_appointment_usecase.dart'
    as _i203;
import '../features/mylife/domain/usecase/create_dream_usecase.dart' as _i208;
import '../features/mylife/domain/usecase/create_positive_usecase.dart'
    as _i215;
import '../features/mylife/domain/usecase/create_task_usecase.dart' as _i217;
import '../features/mylife/domain/usecase/delete_dream_usecase.dart' as _i224;
import '../features/mylife/domain/usecase/delete_item_usecase.dart' as _i231;
import '../features/mylife/domain/usecase/delete_positive_usecase.dart'
    as _i232;
import '../features/mylife/domain/usecase/get_all_tasks_usecase.dart' as _i313;
import '../features/mylife/domain/usecase/get_appointments.dart' as _i247;
import '../features/mylife/domain/usecase/get_clients_usecase.dart' as _i252;
import '../features/mylife/domain/usecase/get_dreams_usecase.dart' as _i262;
import '../features/mylife/domain/usecase/get_positives_usecase.dart' as _i298;
import '../features/mylife/domain/usecase/get_quote_usecase.dart' as _i301;
import '../features/mylife/domain/usecase/get_stories_uescase.dart' as _i310;
import '../features/mylife/domain/usecase/get_story_usecase.dart' as _i311;
import '../features/mylife/domain/usecase/update_appointment_usecase.dart'
    as _i156;
import '../features/mylife/domain/usecase/upload_image_usecase.dart' as _i170;
import '../features/news/data/datasource/inews_remote.dart' as _i79;
import '../features/news/data/datasource/news_remote.dart' as _i80;
import '../features/news/data/repository/news_repository.dart' as _i82;
import '../features/news/domain/repository/inews_repository.dart' as _i81;
import '../features/news/domain/usecase/get_creation_news_usecase.dart'
    as _i257;
import '../features/news/domain/usecase/get_news.usecase.dart' as _i295;
import '../features/news/domain/usecase/get_news_category_usecase.dart'
    as _i293;
import '../features/news/domain/usecase/get_news_of_single_usecase.dart'
    as _i294;
import '../features/news/domain/usecase/get_single_news_category_usecase.dart'
    as _i307;
import '../features/news/domain/usecase/get_summery_usecase.dart' as _i312;
import '../features/notification/data/datasource/inotification_remote.dart'
    as _i83;
import '../features/notification/data/datasource/notification_remote.dart'
    as _i84;
import '../features/notification/data/repository/notification_repository.dart'
    as _i86;
import '../features/notification/domain/repository/inotification_repository.dart'
    as _i85;
import '../features/notification/domain/usecase/delete_all_notification_usecase.dart'
    as _i222;
import '../features/notification/domain/usecase/delete_by_id_notification_usecase.dart'
    as _i223;
import '../features/notification/domain/usecase/get_all_notification_usecase.dart'
    as _i244;
import '../features/personality/data/datasource/ipersonality_remote.dart'
    as _i87;
import '../features/personality/data/datasource/personality_remote.dart'
    as _i88;
import '../features/personality/data/repository/personality_repository.dart'
    as _i90;
import '../features/personality/domain/repository/ipersonality_repository.dart'
    as _i89;
import '../features/personality/domain/usecase/check_has_avatar_usecase.dart'
    as _i189;
import '../features/personality/domain/usecase/get_my_avatar_usecase.dart'
    as _i285;
import '../features/personality/domain/usecase/get_personaliity_question_usecase.dart'
    as _i296;
import '../features/personality/domain/usecase/save_answers_usecase.dart'
    as _i144;
import '../features/place/data/datasource/iplace_remote.dart' as _i91;
import '../features/place/data/datasource/place_remote.dart' as _i92;
import '../features/place/data/repository/place_repository.dart' as _i94;
import '../features/place/domain/repository/iplace_repository.dart' as _i93;
import '../features/place/domain/usecase/get_reverse_geocoding_usecase.dart'
    as _i305;
import '../features/religion/data/datasource/ireligion_remote.dart' as _i95;
import '../features/religion/data/datasource/religion_remote.dart' as _i96;
import '../features/religion/data/repository/religion_repository.dart' as _i98;
import '../features/religion/domain/repository/ireligion_repository.dart'
    as _i97;
import '../features/religion/domain/usecase/get_azkar_by_category.dart'
    as _i248;
import '../features/religion/domain/usecase/get_nearby_mosques_usecase.dart'
    as _i292;
import '../features/religion/domain/usecase/get_prayer_times_usecase.dart'
    as _i299;
import '../features/salary_count/data/datasource/isalary_count_remote.dart'
    as _i99;
import '../features/salary_count/data/datasource/salary_count_remote.dart'
    as _i100;
import '../features/salary_count/data/repository/salary_count_repository.dart'
    as _i102;
import '../features/salary_count/domain/repository/isalary_count_repository.dart'
    as _i101;
import '../features/salary_count/domain/usecase/change_order_usecase.dart'
    as _i185;
import '../features/salary_count/domain/usecase/change_selected_time_table_usecase.dart'
    as _i183;
import '../features/salary_count/domain/usecase/create_time_table_usecase.dart'
    as _i218;
import '../features/salary_count/domain/usecase/customize_time_table_usecase.dart'
    as _i219;
import '../features/salary_count/domain/usecase/delete_time_table_usecase.dart'
    as _i234;
import '../features/salary_count/domain/usecase/get_time_table_list_usecase.dart'
    as _i316;
import '../features/salary_count/domain/usecase/update_time_table_usecase.dart'
    as _i166;
import '../features/settings/data/datasource/isettings_remote.dart' as _i103;
import '../features/settings/data/datasource/settings_remote.dart' as _i104;
import '../features/settings/data/repository/settings_repository.dart' as _i106;
import '../features/settings/domain/repository/isettings_repository.dart'
    as _i105;
import '../features/settings/domain/usecase/get_settings_use_case.dart'
    as _i246;
import '../features/settings/domain/usecase/update_comments_settings_use_case.dart'
    as _i157;
import '../features/settings/domain/usecase/update_moments_settings_use_case.dart'
    as _i165;
import '../features/settings/domain/usecase/update_user_settings_use_case.dart'
    as _i168;
import '../features/shop/data/datasource/ishop_remote.dart' as _i107;
import '../features/shop/data/datasource/shop_remote.dart' as _i108;
import '../features/shop/data/repository/shop_repository.dart' as _i322;
import '../features/shop/domain/repository/ishop_repository.dart' as _i321;
import '../features/shop/domain/usecase/add_favorite_prodcut_usecse.dart'
    as _i328;
import '../features/shop/domain/usecase/check_coupon_usecase.dart' as _i329;
import '../features/shop/domain/usecase/check_if_create_order_usecase.dart'
    as _i330;
import '../features/shop/domain/usecase/create_order_usecase.dart' as _i331;
import '../features/shop/domain/usecase/create_reviewProduct_usecase.dart'
    as _i324;
import '../features/shop/domain/usecase/create_shipping_address_usecase.dart'
    as _i332;
import '../features/shop/domain/usecase/delete_shipping_address_usecase.dart'
    as _i333;
import '../features/shop/domain/usecase/follow_shop_usecase.dart' as _i334;
import '../features/shop/domain/usecase/get_all_orders_usecase.dart' as _i337;
import '../features/shop/domain/usecase/get_favorite_prodcuts_usecse.dart'
    as _i335;
import '../features/shop/domain/usecase/get_order_details_usecase.dart'
    as _i336;
import '../features/shop/domain/usecase/get_productItem_usecase.dart' as _i338;
import '../features/shop/domain/usecase/get_products_usecase.dart' as _i339;
import '../features/shop/domain/usecase/get_review_usecase.dart' as _i348;
import '../features/shop/domain/usecase/get_shipping_addresses_usecase.dart'
    as _i340;
import '../features/shop/domain/usecase/get_shops_list_usecase.dart' as _i341;
import '../features/shop/domain/usecase/get_single_shop_usecase.dart' as _i342;
import '../features/shop/domain/usecase/get_sliderImages_usecase.dart' as _i343;
import '../features/shop/domain/usecase/get_storecategory_usecase.dart'
    as _i344;
import '../features/shop/domain/usecase/get_taxfee_usecse.dart' as _i345;
import '../features/shop/domain/usecase/get_topCategory_usecase.dart' as _i346;
import '../features/shop/domain/usecase/get_topProducts_usecase.dart' as _i347;
import '../features/shop/domain/usecase/remove_favorite_prodcut_usecse.dart'
    as _i323;
import '../features/shop/domain/usecase/un_follow_shop_usecase.dart' as _i325;
import '../features/shop/domain/usecase/update_shipping_address_usecase.dart'
    as _i326;
import '../features/shop/domain/usecase/upload_image_usecase.dart' as _i327;
import '../features/splash/data/datasource/isplash_remote.dart' as _i109;
import '../features/splash/data/datasource/splash_remote.dart' as _i110;
import '../features/splash/data/repository/splash_repository.dart' as _i112;
import '../features/splash/domain/repository/isplash_repository.dart' as _i111;
import '../features/sports/data/datasource/isports_remote.dart' as _i113;
import '../features/sports/data/datasource/sports_remote.dart' as _i114;
import '../features/sports/data/repository/sports_repository.dart' as _i116;
import '../features/sports/domain/repository/isports_repository.dart' as _i115;
import '../features/sports/domain/usecase/get_live_scores_usecase.dart'
    as _i279;
import '../features/sports/domain/usecase/get_match_event_usecase.dart'
    as _i281;
import '../features/sports/domain/usecase/get_match_line_up_usecase.dart'
    as _i282;
import '../features/sports/domain/usecase/get_match_statistics_usecase.dart'
    as _i136;
import '../features/upload/data/datasource/iupload_remote.dart' as _i117;
import '../features/upload/data/datasource/upload_remote.dart' as _i118;
import '../features/upload/data/repository/upload_repository.dart' as _i120;
import '../features/upload/domain/repository/iupload_repository.dart' as _i119;
import '../features/upload/domain/usecase/upload_usecase.dart' as _i169;
import '../features/user/data/datasource/iuser_remote.dart' as _i121;
import '../features/user/data/datasource/user_remote.dart' as _i122;
import '../features/user/data/repository/user_repository.dart' as _i124;
import '../features/user/domain/repository/iuser_repository.dart' as _i123;
import '../features/user/domain/usecase/add_address_usecase.dart' as _i173;
import '../features/user/domain/usecase/change_email_usecase.dart' as _i180;
import '../features/user/domain/usecase/change_password_usecase.dart' as _i182;
import '../features/user/domain/usecase/delete_account_usecase.dart' as _i220;
import '../features/user/domain/usecase/delete_address_usecase.dart' as _i221;
import '../features/user/domain/usecase/get_all_addresses_usecase.dart'
    as _i239;
import '../features/user/domain/usecase/get_all_city_usecase.dart' as _i242;
import '../features/user/domain/usecase/get_my_friend_moments_usecase.dart'
    as _i286;
import '../features/user/domain/usecase/get_user_profile_usecase.dart' as _i319;
import '../features/user/domain/usecase/select_address_usecase.dart' as _i148;
import '../features/user/domain/usecase/update_address_usecase.dart' as _i155;
import '../features/user/domain/usecase/update_profile_use_case.dart' as _i167;
import 'modules/logger_module.dart' as _i349;
import 'modules/shared_preferences_module.dart'
    as _i350; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final facebookLoginModule = _$FacebookLoginModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  gh.lazySingleton<_i3.AppTextStyles>(() => _i3.AppTextStyles());
  gh.lazySingleton<_i4.HttpClient>(() => _i4.HttpClient());
  gh.factory<_i5.IAccountRemoteSource>(() => _i6.AccountRemoteSource());
  gh.factory<_i7.IAccountRepository>(
      () => _i8.AccountRepository(get<_i5.IAccountRemoteSource>()));
  gh.singleton<_i9.IChallengeRemoteSource>(_i10.ChallengeRemoteSource());
  gh.singleton<_i11.IChallengeRepository>(
      _i12.ChallengeRepository(get<_i9.IChallengeRemoteSource>()));
  gh.singleton<_i13.ICommentRemoteSource>(_i14.CommentRemoteSource());
  gh.singleton<_i15.ICommentRepository>(
      _i16.CommentRepository(get<_i13.ICommentRemoteSource>()));
  gh.singleton<_i17.IEventOrginizerRemoteSource>(
      _i18.EventOrginizerRemoteSource());
  gh.singleton<_i19.IEventOrginizerRepository>(
      _i20.EventOrginizerRepository(get<_i17.IEventOrginizerRemoteSource>()));
  gh.singleton<_i21.IEventRemoteSource>(_i22.EventRemoteSource());
  gh.singleton<_i23.IEventRepository>(
      _i24.EventRepository(get<_i21.IEventRemoteSource>()));
  gh.singleton<_i25.IFavoriteRemoteSource>(_i26.FavoriteRemoteSource());
  gh.singleton<_i27.IFavoriteRepository>(
      _i28.FavoriteRepository(get<_i25.IFavoriteRemoteSource>()));
  gh.singleton<_i29.IFriendRemoteSource>(_i30.FriendRemoteSource());
  gh.singleton<_i31.IFriendRepository>(
      _i32.FriendRepository(get<_i29.IFriendRemoteSource>()));
  gh.singleton<_i33.IHealthRemoteSource>(_i34.HealthRemoteSource());
  gh.singleton<_i35.IHealthRepository>(
      _i36.HealthRepository(get<_i33.IHealthRemoteSource>()));
  gh.singleton<_i37.IHelpRemoteSource>(_i38.HelpRemoteSource());
  gh.singleton<_i39.IHelpRepository>(
      _i40.HelpRepository(get<_i37.IHelpRemoteSource>()));
  gh.factory<_i41.IHomeRemoteSource>(() => _i42.HomeRemoteSource());
  gh.factory<_i43.IHomeRepository>(
      () => _i44.HomeRepository(get<_i41.IHomeRemoteSource>()));
  gh.factory<_i45.IHomeServicesRemoteSource>(
      () => _i46.HomeServicesRemoteSource());
  gh.factory<_i47.IHomeServicesRemoteSource>(
      () => _i48.HomeServicesRemoteSource());
  gh.factory<_i49.IHomeServicesRepository>(
      () => _i50.HomeServicesRepository(get<_i47.IHomeServicesRemoteSource>()));
  gh.singleton<_i51.IInteractRemoteSource>(_i52.InteractRemoteSource());
  gh.singleton<_i53.IInteractRepository>(
      _i54.InteractRepository(get<_i51.IInteractRemoteSource>()));
  gh.singleton<_i55.ILikeRemoteSource>(_i56.LikeRemoteSource());
  gh.singleton<_i57.ILikeRepository>(
      _i58.LikeRepository(get<_i55.ILikeRemoteSource>()));
  gh.singleton<_i59.ILocationRemoteSource>(_i60.LocationRemoteSource());
  gh.singleton<_i61.ILocationRepository>(
      _i62.LocationRepository(get<_i59.ILocationRemoteSource>()));
  gh.singleton<_i63.IMessagesRemoteSource>(_i64.MessagesRemoteSource());
  gh.singleton<_i65.IMessagesRepository>(
      _i66.MessagesRepository(get<_i63.IMessagesRemoteSource>()));
  gh.singleton<_i67.IMobileAdsRemoteSource>(_i68.MobileAdsRemoteSource());
  gh.singleton<_i69.IMobileAdsRepository>(
      _i70.MobileAdsRepository(get<_i67.IMobileAdsRemoteSource>()));
  gh.singleton<_i71.IMomentRemoteSource>(_i72.MomentRemoteSource());
  gh.singleton<_i73.IMomentRepository>(
      _i74.MomentRepository(get<_i71.IMomentRemoteSource>()));
  gh.singleton<_i75.IMylifeRemoteSource>(_i76.MylifeRemoteSource());
  gh.singleton<_i77.IMylifeRepository>(
      _i78.MylifeRepository(get<_i75.IMylifeRemoteSource>()));
  gh.singleton<_i79.INewsRemoteSource>(_i80.NewsRemoteSource());
  gh.singleton<_i81.INewsRepository>(
      _i82.NewsRepository(get<_i79.INewsRemoteSource>()));
  gh.singleton<_i83.INotificationRemoteSource>(_i84.NotificationRemoteSource());
  gh.singleton<_i85.INotificationRepository>(
      _i86.NotificationRepository(get<_i83.INotificationRemoteSource>()));
  gh.singleton<_i87.IPersonalityRemoteSource>(_i88.PersonalityRemoteSource());
  gh.singleton<_i89.IPersonalityRepository>(
      _i90.PersonalityRepository(get<_i87.IPersonalityRemoteSource>()));
  gh.singleton<_i91.IPlaceRemoteSource>(_i92.PlaceRemoteSource());
  gh.singleton<_i93.IPlaceRepository>(
      _i94.PlaceRepository(get<_i91.IPlaceRemoteSource>()));
  gh.singleton<_i95.IReligionRemoteSource>(_i96.ReligionRemoteSource());
  gh.singleton<_i97.IReligionRepository>(
      _i98.ReligionRepository(get<_i95.IReligionRemoteSource>()));
  gh.singleton<_i99.ISalaryCountRemoteSource>(_i100.SalaryCountRemoteSource());
  gh.singleton<_i101.ISalaryCountRepository>(
      _i102.SalaryCountRepository(get<_i99.ISalaryCountRemoteSource>()));
  gh.singleton<_i103.ISettingsRemoteSource>(_i104.SettingsRemoteSource());
  gh.singleton<_i105.ISettingsRepository>(
      _i106.SettingsRepository(get<_i103.ISettingsRemoteSource>()));
  gh.singleton<_i107.IShopSource>(_i108.ShopRemoteSource());
  gh.singleton<_i109.ISplashRemoteSource>(_i110.SplashRemoteSource());
  gh.singleton<_i111.ISplashRepository>(
      _i112.SplashRepository(get<_i109.ISplashRemoteSource>()));
  gh.singleton<_i113.ISportsRemoteSource>(_i114.SportsRemoteSource());
  gh.singleton<_i115.ISportsRepository>(
      _i116.SportsRepository(get<_i113.ISportsRemoteSource>()));
  gh.singleton<_i117.IUploadRemoteSource>(_i118.UploadRemoteSource());
  gh.singleton<_i119.IUploadRepository>(
      _i120.UploadRepository(get<_i117.IUploadRemoteSource>()));
  gh.singleton<_i121.IUserRemoteSource>(_i122.UserRemoteSource());
  gh.singleton<_i123.IUserRepository>(
      _i124.UserRepository(get<_i121.IUserRemoteSource>()));
  gh.factory<_i125.InteractUseCase>(
      () => _i125.InteractUseCase(get<_i53.IInteractRepository>()));
  gh.factory<_i126.InviteFriendsUseCase>(
      () => _i126.InviteFriendsUseCase(get<_i11.IChallengeRepository>()));
  gh.factory<_i127.JoinUseCase>(
      () => _i127.JoinUseCase(get<_i11.IChallengeRepository>()));
  gh.factory<_i128.LikeActionUseCase>(
      () => _i128.LikeActionUseCase(get<_i57.ILikeRepository>()));
  gh.singleton<_i129.LocalizationProvider>(_i129.LocalizationProvider());
  gh.lazySingleton<_i130.Logger>(() => facebookLoginModule.facebookLogin);
  gh.factory<_i131.LoginUseCase>(
      () => _i131.LoginUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i132.LoginWithGoogleUsecase>(
      _i132.LoginWithGoogleUsecase(get<_i7.IAccountRepository>()));
  gh.factory<_i133.LogoutUseCase>(
      () => _i133.LogoutUseCase(get<_i7.IAccountRepository>()));
  gh.factory<_i134.MakeCallNotificationUseCase>(
      () => _i134.MakeCallNotificationUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i135.ManualCheckTicketUsecase>(() =>
      _i135.ManualCheckTicketUsecase(get<_i19.IEventOrginizerRepository>()));
  gh.singleton<_i136.MatchStatisticsUsecase>(
      _i136.MatchStatisticsUsecase(get<_i115.ISportsRepository>()));
  gh.lazySingleton<_i137.NavigationRoute>(() => _i137.NavigationRoute());
  gh.singleton<_i138.NavigationService>(_i138.NavigationService());
  gh.factory<_i139.ReadMessagesUseCase>(
      () => _i139.ReadMessagesUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i140.RegisterUseCase>(
      () => _i140.RegisterUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i141.RegisterWithGoogleUsecase>(
      _i141.RegisterWithGoogleUsecase(get<_i7.IAccountRepository>()));
  gh.factory<_i142.RejectFriendRequestUseCase>(
      () => _i142.RejectFriendRequestUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i143.ReportPostUseCase>(
      () => _i143.ReportPostUseCase(get<_i73.IMomentRepository>()));
  gh.singleton<_i144.SaveAnswersUsecase>(
      _i144.SaveAnswersUsecase(get<_i89.IPersonalityRepository>()));
  gh.factory<_i145.ScanTicketQrCodeUseCase>(() =>
      _i145.ScanTicketQrCodeUseCase(get<_i19.IEventOrginizerRepository>()));
  gh.factory<_i146.ScanTicketQrCodeUseCase>(
      () => _i146.ScanTicketQrCodeUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i147.SearchMyRunningEventsUseCase>(() =>
      _i147.SearchMyRunningEventsUseCase(
          get<_i19.IEventOrginizerRepository>()));
  gh.singleton<_i148.SelectAddressUsecase>(
      _i148.SelectAddressUsecase(get<_i123.IUserRepository>()));
  gh.factory<_i149.SendFriendRequestUseCase>(
      () => _i149.SendFriendRequestUseCase(get<_i31.IFriendRepository>()));
  await gh.factoryAsync<_i150.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i151.SpotifyHttpClient>(() => _i151.SpotifyHttpClient());
  gh.lazySingleton<_i152.ThemeConfig>(() => _i152.ThemeConfig());
  gh.factory<_i153.UnblockFriendUseCase>(
      () => _i153.UnblockFriendUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i154.UnlikeUseCase>(
      () => _i154.UnlikeUseCase(get<_i57.ILikeRepository>()));
  gh.singleton<_i155.UpdateAddressUseCase>(
      _i155.UpdateAddressUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i156.UpdateAppointmentUseCase>(
      () => _i156.UpdateAppointmentUseCase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i157.UpdateCommentsSettingsUsecase>(
      _i157.UpdateCommentsSettingsUsecase(get<_i105.ISettingsRepository>()));
  gh.singleton<_i158.UpdateDailyStepsUsecase>(
      _i158.UpdateDailyStepsUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i159.UpdateDailyWaterUsecase>(
      _i159.UpdateDailyWaterUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i160.UpdateFirebaseTokenUseCase>(
      () => _i160.UpdateFirebaseTokenUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i161.UpdateGoalUsecase>(
      _i161.UpdateGoalUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i162.UpdateGroupUseCase>(
      () => _i162.UpdateGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i163.UpdateHealthProfileUsecase>(
      _i163.UpdateHealthProfileUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i164.UpdateLocationUseCase>(
      () => _i164.UpdateLocationUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i165.UpdateMomentsSettingsUsecase>(
      _i165.UpdateMomentsSettingsUsecase(get<_i105.ISettingsRepository>()));
  gh.singleton<_i166.UpdateTimeTableUsecase>(
      _i166.UpdateTimeTableUsecase(get<_i101.ISalaryCountRepository>()));
  gh.singleton<_i167.UpdateUserProfileUseCase>(
      _i167.UpdateUserProfileUseCase(get<_i123.IUserRepository>()));
  gh.singleton<_i168.UpdateUserSettingsUsecase>(
      _i168.UpdateUserSettingsUsecase(get<_i105.ISettingsRepository>()));
  gh.singleton<_i169.UploadFileUseCase>(
      _i169.UploadFileUseCase(get<_i119.IUploadRepository>()));
  gh.singleton<_i170.UploadImageUsecase>(
      _i170.UploadImageUsecase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i171.UploadImageUsecase>(
      _i171.UploadImageUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i172.VerifyUseCase>(
      () => _i172.VerifyUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i173.AddAddressUseCase>(
      _i173.AddAddressUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i174.AddFriendByQrCodeUseCase>(
      () => _i174.AddFriendByQrCodeUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i175.AddFriendToGroupUseCase>(
      () => _i175.AddFriendToGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i176.AnswerQuestionUsecase>(
      _i176.AnswerQuestionUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i177.ApproveFriendRequestUseCase>(
      () => _i177.ApproveFriendRequestUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i178.BlockFriendUseCase>(
      () => _i178.BlockFriendUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i179.CancelFriendRequestUseCase>(
      () => _i179.CancelFriendRequestUseCase(get<_i31.IFriendRepository>()));
  gh.singleton<_i180.ChangeEmailUseCase>(
      _i180.ChangeEmailUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i181.ChangeMuteStatusUsecase>(
      () => _i181.ChangeMuteStatusUsecase(get<_i31.IFriendRepository>()));
  gh.singleton<_i182.ChangePasswordUsecase>(
      _i182.ChangePasswordUsecase(get<_i123.IUserRepository>()));
  gh.singleton<_i183.ChangeSelectedTimeTableUsecase>(
      _i183.ChangeSelectedTimeTableUsecase(
          get<_i101.ISalaryCountRepository>()));
  gh.factory<_i184.ChangeStatusGroupUseCase>(
      () => _i184.ChangeStatusGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i185.ChangeTimeTableOrderUsecase>(
      _i185.ChangeTimeTableOrderUsecase(get<_i101.ISalaryCountRepository>()));
  gh.factory<_i186.CheckAppointmentUseCase>(
      () => _i186.CheckAppointmentUseCase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i187.CheckDeviceIdUsecase>(
      _i187.CheckDeviceIdUsecase(get<_i7.IAccountRepository>()));
  gh.factory<_i188.CheckDreamUsecase>(
      () => _i188.CheckDreamUsecase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i189.CheckHasAvatarUsecase>(
      _i189.CheckHasAvatarUsecase(get<_i89.IPersonalityRepository>()));
  gh.singleton<_i190.CheckHealthProfileUsecase>(
      _i190.CheckHealthProfileUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i191.CheckIfCanPayUseCase>(
      () => _i191.CheckIfCanPayUseCase(get<_i23.IEventRepository>()));
  gh.singleton<_i192.CheckIfEmailExistUsecase>(
      _i192.CheckIfEmailExistUsecase(get<_i7.IAccountRepository>()));
  gh.singleton<_i193.CheckIfPhoneExistUsecase>(
      _i193.CheckIfPhoneExistUsecase(get<_i7.IAccountRepository>()));
  gh.singleton<_i194.CheckIfUsernameExistUsecase>(
      _i194.CheckIfUsernameExistUsecase(get<_i7.IAccountRepository>()));
  gh.factory<_i195.CheckTaskUseCase>(
      () => _i195.CheckTaskUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i196.ClaimRewardsUseCase>(
      () => _i196.ClaimRewardsUseCase(get<_i11.IChallengeRepository>()));
  gh.factory<_i197.ClearConversationMessagesUseCase>(() =>
      _i197.ClearConversationMessagesUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i198.ClearGroupMessagesUseCase>(
      () => _i198.ClearGroupMessagesUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i199.CommentUseCase>(
      () => _i199.CommentUseCase(get<_i15.ICommentRepository>()));
  gh.factory<_i200.ConfirmPasswordCodeUseCase>(
      () => _i200.ConfirmPasswordCodeUseCase(get<_i7.IAccountRepository>()));
  gh.factory<_i201.ConfirmPasswordUseCase>(
      () => _i201.ConfirmPasswordUseCase(get<_i7.IAccountRepository>()));
  gh.singleton<_i202.ConfirmPhoneNumberUsecase>(
      _i202.ConfirmPhoneNumberUsecase(get<_i7.IAccountRepository>()));
  gh.factory<_i203.CreateAppointmentUseCase>(
      () => _i203.CreateAppointmentUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i204.CreateBrodCastMessageUseCase>(() =>
      _i204.CreateBrodCastMessageUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i205.CreateContactUSTicketUseCase>(
      () => _i205.CreateContactUSTicketUseCase(get<_i39.IHelpRepository>()));
  gh.singleton<_i206.CreateDailyDishUsecase>(
      _i206.CreateDailyDishUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i207.CreateDailySessionUseCase>(
      _i207.CreateDailySessionUseCase(get<_i35.IHealthRepository>()));
  gh.factory<_i208.CreateDreamUsecase>(
      () => _i208.CreateDreamUsecase(get<_i77.IMylifeRepository>()));
  gh.factory<_i209.CreateEventTicketUseCase>(
      () => _i209.CreateEventTicketUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i210.CreateFavoriteUseCase>(
      () => _i210.CreateFavoriteUseCase(get<_i27.IFavoriteRepository>()));
  gh.factory<_i211.CreateGroupUseCase>(
      () => _i211.CreateGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i212.CreateHealthProfileUsecase>(
      _i212.CreateHealthProfileUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i213.CreateMessageUseCase>(
      () => _i213.CreateMessageUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i214.CreatePaymentUseCase>(
      () => _i214.CreatePaymentUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i215.CreatePositiveUsecase>(
      () => _i215.CreatePositiveUsecase(get<_i77.IMylifeRepository>()));
  gh.factory<_i216.CreatePostUseCase>(
      () => _i216.CreatePostUseCase(get<_i73.IMomentRepository>()));
  gh.factory<_i217.CreateTaskUseCase>(
      () => _i217.CreateTaskUseCase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i218.CreateTimeTableUsecase>(
      _i218.CreateTimeTableUsecase(get<_i101.ISalaryCountRepository>()));
  gh.singleton<_i219.CustomizeTimeTable>(
      _i219.CustomizeTimeTable(get<_i101.ISalaryCountRepository>()));
  gh.singleton<_i220.DeleteAccountUsecase>(
      _i220.DeleteAccountUsecase(get<_i123.IUserRepository>()));
  gh.singleton<_i221.DeleteAddressUsecase>(
      _i221.DeleteAddressUsecase(get<_i123.IUserRepository>()));
  gh.factory<_i222.DeleteAllNotificationUsecase>(() =>
      _i222.DeleteAllNotificationUsecase(get<_i85.INotificationRepository>()));
  gh.factory<_i223.DeleteByIdNotificationUsecase>(() =>
      _i223.DeleteByIdNotificationUsecase(get<_i85.INotificationRepository>()));
  gh.factory<_i224.DeleteDreamUsecase>(
      () => _i224.DeleteDreamUsecase(get<_i77.IMylifeRepository>()));
  gh.factory<_i225.DeleteFavoriteByRefUseCase>(
      () => _i225.DeleteFavoriteByRefUseCase(get<_i27.IFavoriteRepository>()));
  gh.factory<_i226.DeleteFavoriteUseCase>(
      () => _i226.DeleteFavoriteUseCase(get<_i27.IFavoriteRepository>()));
  gh.factory<_i227.DeleteFriendFromGroupUseCase>(() =>
      _i227.DeleteFriendFromGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i228.DeleteFriendUseCase>(
      () => _i228.DeleteFriendUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i229.DeleteGroupUseCase>(
      () => _i229.DeleteGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i230.DeleteInteractUseCase>(
      () => _i230.DeleteInteractUseCase(get<_i53.IInteractRepository>()));
  gh.factory<_i231.DeleteItemUseCase>(
      () => _i231.DeleteItemUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i232.DeletePositiveUsecase>(
      () => _i232.DeletePositiveUsecase(get<_i77.IMylifeRepository>()));
  gh.factory<_i233.DeletePostUseCase>(
      () => _i233.DeletePostUseCase(get<_i73.IMomentRepository>()));
  gh.singleton<_i234.DeleteTimeTableUsecase>(
      _i234.DeleteTimeTableUsecase(get<_i101.ISalaryCountRepository>()));
  gh.factory<_i235.EditPostUseCase>(
      () => _i235.EditPostUseCase(get<_i73.IMomentRepository>()));
  gh.factory<_i236.FindPlaceUseCase>(
      () => _i236.FindPlaceUseCase(get<_i73.IMomentRepository>()));
  gh.factory<_i237.ForgetPasswordUseCase>(
      () => _i237.ForgetPasswordUseCase(get<_i7.IAccountRepository>()));
  gh.factory<_i238.GetAboutUsUseCase>(
      () => _i238.GetAboutUsUseCase(get<_i39.IHelpRepository>()));
  gh.singleton<_i239.GetAllAddressesUseCase>(
      _i239.GetAllAddressesUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i240.GetAllBannersUseCase>(
      () => _i240.GetAllBannersUseCase(get<_i43.IHomeRepository>()));
  gh.factory<_i241.GetAllChallengesUsecase>(
      () => _i241.GetAllChallengesUsecase(get<_i11.IChallengeRepository>()));
  gh.singleton<_i242.GetAllCityUseCase>(
      _i242.GetAllCityUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i243.GetAllFaqsUseCase>(
      () => _i243.GetAllFaqsUseCase(get<_i39.IHelpRepository>()));
  gh.factory<_i244.GetAllNotificationUsecase>(() =>
      _i244.GetAllNotificationUsecase(get<_i85.INotificationRepository>()));
  gh.factory<_i245.GetAllReasonsUseCase>(
      () => _i245.GetAllReasonsUseCase(get<_i39.IHelpRepository>()));
  gh.singleton<_i246.GetAllSettingsUsecase>(
      _i246.GetAllSettingsUsecase(get<_i105.ISettingsRepository>()));
  gh.factory<_i247.GetAppointmentsUseCase>(
      () => _i247.GetAppointmentsUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i248.GetAzkarByCategoryUsecase>(
      () => _i248.GetAzkarByCategoryUsecase(get<_i97.IReligionRepository>()));
  gh.factory<_i249.GetChallengDetailsUseCase>(
      () => _i249.GetChallengDetailsUseCase(get<_i11.IChallengeRepository>()));
  gh.factory<_i250.GetClientProfileUseCase>(
      () => _i250.GetClientProfileUseCase(get<_i7.IAccountRepository>()));
  gh.factory<_i251.GetClientsUseCase>(
      () => _i251.GetClientsUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i252.GetClientsUseCase>(
      () => _i252.GetClientsUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i253.GetClientsWithoutFriendsUseCase>(() =>
      _i253.GetClientsWithoutFriendsUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i254.GetCommentsUseCase>(
      () => _i254.GetCommentsUseCase(get<_i15.ICommentRepository>()));
  gh.factory<_i255.GetConversationsUseCase>(
      () => _i255.GetConversationsUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i256.GetCountFriendsAndNotifications>(() =>
      _i256.GetCountFriendsAndNotifications(get<_i31.IFriendRepository>()));
  gh.factory<_i257.GetCreationTimeNewsUsecase>(
      () => _i257.GetCreationTimeNewsUsecase(get<_i81.INewsRepository>()));
  gh.singleton<_i258.GetDailyDishListUsecase>(
      _i258.GetDailyDishListUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i259.GetDailySessionUsecase>(
      _i259.GetDailySessionUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i260.GetDishByIdUsecase>(
      _i260.GetDishByIdUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i261.GetDishedListByCategoryUsecase>(
      _i261.GetDishedListByCategoryUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i262.GetDreamsUseCase>(
      () => _i262.GetDreamsUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i263.GetEventCategoriesUseCase>(
      () => _i263.GetEventCategoriesUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i264.GetEventTicketUseCase>(
      () => _i264.GetEventTicketUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i265.GetEventTicketsUseCase>(
      () => _i265.GetEventTicketsUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i266.GetEventTicketssUseCase>(() =>
      _i266.GetEventTicketssUseCase(get<_i19.IEventOrginizerRepository>()));
  gh.factory<_i267.GetEventUseCase>(
      () => _i267.GetEventUseCase(get<_i23.IEventRepository>()));
  gh.factory<_i268.GetEventsUseCase>(
      () => _i268.GetEventsUseCase(get<_i23.IEventRepository>()));
  gh.singleton<_i269.GetExercisesUsecase>(
      _i269.GetExercisesUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i270.GetFavoriteDishesUseCase>(
      _i270.GetFavoriteDishesUseCase(get<_i35.IHealthRepository>()));
  gh.singleton<_i271.GetFavoriteRecipesUseCase>(
      _i271.GetFavoriteRecipesUseCase(get<_i35.IHealthRepository>()));
  gh.singleton<_i272.GetFavoriteSessionListUsecase>(
      _i272.GetFavoriteSessionListUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i273.GetFavoritesUseCase>(
      () => _i273.GetFavoritesUseCase(get<_i27.IFavoriteRepository>()));
  gh.singleton<_i274.GetFoodCategoriesUsecase>(
      _i274.GetFoodCategoriesUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i275.GetFriendRequestsUseCase>(
      () => _i275.GetFriendRequestsUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i276.GetGroupsUseCase>(
      () => _i276.GetGroupsUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i277.GetHealthDashboardUsecase>(
      _i277.GetHealthDashboardUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i278.GetInteractListUseCase>(
      () => _i278.GetInteractListUseCase(get<_i53.IInteractRepository>()));
  gh.singleton<_i279.GetLiveScoresUsecase>(
      _i279.GetLiveScoresUsecase(get<_i115.ISportsRepository>()));
  gh.factory<_i280.GetLocationsLiteUseCase>(
      () => _i280.GetLocationsLiteUseCase(get<_i61.ILocationRepository>()));
  gh.singleton<_i281.GetMatchEventsUsecase>(
      _i281.GetMatchEventsUsecase(get<_i115.ISportsRepository>()));
  gh.singleton<_i282.GetMatchLineUpUsecase>(
      _i282.GetMatchLineUpUsecase(get<_i115.ISportsRepository>()));
  gh.factory<_i283.GetMessagesUseCase>(
      () => _i283.GetMessagesUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i284.GetMomentsUseCase>(
      () => _i284.GetMomentsUseCase(get<_i73.IMomentRepository>()));
  gh.singleton<_i285.GetMyAvatarUsecase>(
      _i285.GetMyAvatarUsecase(get<_i89.IPersonalityRepository>()));
  gh.singleton<_i286.GetMyFriendMomentsUseCase>(
      _i286.GetMyFriendMomentsUseCase(get<_i123.IUserRepository>()));
  gh.factory<_i287.GetMyFriendsToChallengeUseCase>(() =>
      _i287.GetMyFriendsToChallengeUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i288.GetMyFriendsUseCase>(
      () => _i288.GetMyFriendsUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i289.GetMyRunningEventsUseCase>(() =>
      _i289.GetMyRunningEventsUseCase(get<_i19.IEventOrginizerRepository>()));
  gh.factory<_i290.GetMyRunningEventsUsecase>(
      () => _i290.GetMyRunningEventsUsecase(get<_i23.IEventRepository>()));
  gh.factory<_i291.GetNearbyClientsUseCase>(
      () => _i291.GetNearbyClientsUseCase(get<_i7.IAccountRepository>()));
  gh.factory<_i292.GetNearbyMosquesUsecase>(
      () => _i292.GetNearbyMosquesUsecase(get<_i97.IReligionRepository>()));
  gh.factory<_i293.GetNewsCategoryUsecase>(
      () => _i293.GetNewsCategoryUsecase(get<_i81.INewsRepository>()));
  gh.factory<_i294.GetNewsOfSingleCategoryUsecase>(
      () => _i294.GetNewsOfSingleCategoryUsecase(get<_i81.INewsRepository>()));
  gh.factory<_i295.GetNewsUseCase>(
      () => _i295.GetNewsUseCase(get<_i81.INewsRepository>()));
  gh.singleton<_i296.GetPersonalityQuestionUsecase>(
      _i296.GetPersonalityQuestionUsecase(get<_i89.IPersonalityRepository>()));
  gh.factory<_i297.GetPointsUseCase>(
      () => _i297.GetPointsUseCase(get<_i73.IMomentRepository>()));
  gh.factory<_i298.GetPositivesUseCase>(
      () => _i298.GetPositivesUseCase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i299.GetPrayerTimesUsecase>(
      _i299.GetPrayerTimesUsecase(get<_i97.IReligionRepository>()));
  gh.singleton<_i300.GetQuestionsUsecase>(
      _i300.GetQuestionsUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i301.GetQuoteUseCase>(
      () => _i301.GetQuoteUseCase(get<_i77.IMylifeRepository>()));
  gh.singleton<_i302.GetRecipeListByCategoryUsecase>(
      _i302.GetRecipeListByCategoryUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i303.GetRecommendedFood>(
      _i303.GetRecommendedFood(get<_i35.IHealthRepository>()));
  gh.singleton<_i304.GetRecommendedSessionUseCase>(
      _i304.GetRecommendedSessionUseCase(get<_i35.IHealthRepository>()));
  gh.factory<_i305.GetReverseGeocodingUseCase>(
      () => _i305.GetReverseGeocodingUseCase(get<_i93.IPlaceRepository>()));
  gh.singleton<_i306.GetSessionsUsecase>(
      _i306.GetSessionsUsecase(get<_i35.IHealthRepository>()));
  gh.factory<_i307.GetSingleNewsCategoryUsecase>(
      () => _i307.GetSingleNewsCategoryUsecase(get<_i81.INewsRepository>()));
  gh.factory<_i308.GetStatusFriendUseCase>(
      () => _i308.GetStatusFriendUseCase(get<_i31.IFriendRepository>()));
  gh.factory<_i309.GetStatusGroupUseCase>(
      () => _i309.GetStatusGroupUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i310.GetStoriesUseCase>(
      () => _i310.GetStoriesUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i311.GetStoryUseCase>(
      () => _i311.GetStoryUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i312.GetSummeryNewsUsecase>(
      () => _i312.GetSummeryNewsUsecase(get<_i81.INewsRepository>()));
  gh.factory<_i313.GetTasksUseCase>(
      () => _i313.GetTasksUseCase(get<_i77.IMylifeRepository>()));
  gh.factory<_i314.GetTicketDetailsUsecase>(() =>
      _i314.GetTicketDetailsUsecase(get<_i19.IEventOrginizerRepository>()));
  gh.factory<_i315.GetTicketReportUsecase>(() =>
      _i315.GetTicketReportUsecase(get<_i19.IEventOrginizerRepository>()));
  gh.singleton<_i316.GetTimeTableListUsecase>(
      _i316.GetTimeTableListUsecase(get<_i101.ISalaryCountRepository>()));
  gh.factory<_i317.GetTokenRtmUseCase>(
      () => _i317.GetTokenRtmUseCase(get<_i65.IMessagesRepository>()));
  gh.factory<_i318.GetTokenUseCase>(
      () => _i318.GetTokenUseCase(get<_i65.IMessagesRepository>()));
  gh.singleton<_i319.GetUserProfileUseCase>(
      _i319.GetUserProfileUseCase(get<_i123.IUserRepository>()));
  gh.singleton<_i320.GetUserResultsUsecase>(
      _i320.GetUserResultsUsecase(get<_i35.IHealthRepository>()));
  gh.singleton<_i321.IShopRepository>(
      _i322.ShopRepository(get<_i107.IShopSource>()));
  gh.singleton<_i323.RemoveFavoriteProductUseCase>(
      _i323.RemoveFavoriteProductUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i324.ReviewProductUsecase>(
      _i324.ReviewProductUsecase(get<_i321.IShopRepository>()));
  gh.singleton<_i325.UnFolloWShopUseCase>(
      _i325.UnFolloWShopUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i326.UpdateShippingAddressUseCase>(
      _i326.UpdateShippingAddressUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i327.UploadImagesUsecase>(
      _i327.UploadImagesUsecase(get<_i321.IShopRepository>()));
  gh.singleton<_i328.AddFavoriteProductUseCase>(
      _i328.AddFavoriteProductUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i329.CheckCouponUseCase>(
      _i329.CheckCouponUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i330.CheckIfCreateOrderUseCase>(
      _i330.CheckIfCreateOrderUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i331.CreateOrderUseCase>(
      _i331.CreateOrderUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i332.CreateShippingAddressUseCase>(
      _i332.CreateShippingAddressUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i333.DeleteShippingAddressUseCase>(
      _i333.DeleteShippingAddressUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i334.FolloWShopUseCase>(
      _i334.FolloWShopUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i335.GetFavoriteProductsUseCase>(
      _i335.GetFavoriteProductsUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i336.GetOrdersDetailsUseCase>(
      () => _i336.GetOrdersDetailsUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i337.GetOrderssUseCase>(
      () => _i337.GetOrderssUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i338.GetProductItemUsecase>(
      () => _i338.GetProductItemUsecase(get<_i321.IShopRepository>()));
  gh.factory<_i339.GetProductsListUseCase>(
      () => _i339.GetProductsListUseCase(get<_i321.IShopRepository>()));
  gh.singleton<_i340.GetShippingAddressesUseCase>(
      _i340.GetShippingAddressesUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i341.GetShopsListUsecase>(
      () => _i341.GetShopsListUsecase(get<_i321.IShopRepository>()));
  gh.factory<_i342.GetSingleShopUseCase>(
      () => _i342.GetSingleShopUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i343.GetSliderImagesUsecase>(
      () => _i343.GetSliderImagesUsecase(get<_i321.IShopRepository>()));
  gh.factory<_i344.GetStorecategoryUsecase>(
      () => _i344.GetStorecategoryUsecase(get<_i321.IShopRepository>()));
  gh.singleton<_i345.GetTaxFeeUseCase>(
      _i345.GetTaxFeeUseCase(get<_i321.IShopRepository>()));
  gh.factory<_i346.GetTopCategoryUsecase>(
      () => _i346.GetTopCategoryUsecase(get<_i321.IShopRepository>()));
  gh.factory<_i347.GetTopProductsUsecase>(
      () => _i347.GetTopProductsUsecase(get<_i321.IShopRepository>()));
  gh.factory<_i348.GetgetReviewUsecase>(
      () => _i348.GetgetReviewUsecase(get<_i321.IShopRepository>()));
  return get;
}

class _$FacebookLoginModule extends _i349.FacebookLoginModule {}

class _$SharedPreferencesModule extends _i350.SharedPreferencesModule {}
