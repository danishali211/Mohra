import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:starter_application/core/errors/app_errors.dart';
import 'package:starter_application/core/models/empty_response.dart';
import 'package:starter_application/core/results/result.dart';
import 'package:starter_application/core/usecases/usecase.dart';
import 'package:starter_application/features/event/data/model/request/get_my_running_events_param.dart';
import 'package:starter_application/features/friend/data/model/request/add_friend_by_qrcode_param.dart';
import 'package:starter_application/features/friend/domain/repository/ifriend_repository.dart';
import 'package:starter_application/features/help/domain/entity/faq_entity.dart';
import 'package:starter_application/features/help/domain/repository/ihelp_repository.dart';
import 'package:starter_application/features/notification/data/model/request/get_all_notification_param.dart';

import '../../../../core/params/no_params.dart';
import '../entity/my_running_events_entity.dart';
import '../repository/ievent_orginizer_repository.dart';
@injectable
class GetMyRunningEventsUseCase
    extends UseCase<MyRunningEventsEntity, GetMyRunningEventsParam> {
  final IEventOrginizerRepository repository;

  GetMyRunningEventsUseCase(this.repository);

  @override
  Future<Result<AppErrors, MyRunningEventsEntity>> call(GetMyRunningEventsParam param) {
    return repository.getMyRunningEvents(param);
  }


}
