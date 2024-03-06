import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_application/core/params/no_params.dart';
import 'package:starter_application/di/service_locator.dart';
import 'package:starter_application/features/personality/data/model/request/get_avatar_params.dart';
import 'package:starter_application/features/personality/data/model/request/personalityAnswers.dart';
import 'package:starter_application/features/personality/domain/entity/avatar_entity.dart';
import 'package:starter_application/features/personality/domain/entity/has_avatar_entity.dart';
import 'package:starter_application/features/personality/domain/entity/personality_question_entity.dart';
import 'package:starter_application/features/personality/domain/usecase/check_has_avatar_usecase.dart';
import 'package:starter_application/features/personality/domain/usecase/get_my_avatar_usecase.dart';
import 'package:starter_application/features/personality/domain/usecase/get_personaliity_question_usecase.dart';
import 'package:starter_application/features/personality/domain/usecase/save_answers_usecase.dart';
import 'package:starter_application/features/user/data/model/request/update_profile_params.dart';
import 'package:starter_application/features/user/domain/entity/update_profile_entity.dart';
import 'package:starter_application/features/user/domain/usecase/update_profile_use_case.dart';

import '../../../../../core/errors/app_errors.dart';

part 'personality_cubit.freezed.dart';

part 'personality_state.dart';

class PersonalityCubit extends Cubit<PersonalityState> {
  PersonalityCubit() : super(const PersonalityState.personalityInitState());

  void getQuestions(NoParams params) async {
    emit(const PersonalityState.getQuestion());
    final result = await getIt<GetPersonalityQuestionUsecase>()(params);
    print('aassd');
    result.pick(
      onData: (data) => emit(PersonalityState.questionLoaded(data)),
      onError: (error) => emit(
        PersonalityState.personalityErrorState(
            error, () => this.getQuestions(params)),
      ),
    );
  }

  void getMyAvatar(GetAvatarParams params) async {
    emit(const PersonalityState.personalityLoadingState());
    final result = await getIt<GetMyAvatarUsecase>()(params);
    print('aassd');
    result.pick(
      onData: (data) => emit(PersonalityState.avatarLoaded(data)),
      onError: (error) => emit(
        PersonalityState.personalityErrorState(
            error, () => this.getMyAvatar(params)),
      ),
    );
  }

  void checkHasAvatar(NoParams params) async {
    emit(const PersonalityState.personalityLoadingState());
    final result = await getIt<CheckHasAvatarUsecase>()(params);
    print('aassd');
    result.pick(
      onData: (data) => emit(PersonalityState.hasAvatarChecked(data)),
      onError: (error) => emit(
        PersonalityState.personalityErrorState(
            error, () => this.checkHasAvatar(params)),
      ),
    );
  }

  void saveAnswers(SavePersonaliityAnswers params) async {
    emit(const PersonalityState.saveAnswers());
    final result = await getIt<SaveAnswersUsecase>()(params);
    print('aassd');
    result.pick(
      onData: (data) => emit( const PersonalityState.answersSavedDone()),
      onError: (error) => emit(
        PersonalityState.personalityErrorState(
            error, () => this.saveAnswers(params)),
      ),
    );
  }

  void updateProfile(UpdateProfileParams params) async {
    emit(const PersonalityState.updateProfile());
    final result = await getIt<UpdateUserProfileUseCase>()(params);
    print('aassd');
    result.pick(
      onData: (data) => emit(PersonalityState.updateProfileDone(data)),
      onError: (error) =>
          emit(
            PersonalityState.personalityErrorState(
                error, () => this.updateProfile(params)),
          ),
    );
  }
}
