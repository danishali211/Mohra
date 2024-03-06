import 'package:flutter/material.dart';
import 'package:starter_application/core/navigation/nav.dart';
import 'package:starter_application/features/moment/data/model/request/find_place_param.dart';
import 'package:starter_application/features/moment/domain/entity/find_place_result_list_entity.dart';
import 'package:starter_application/features/moment/presentation/screen/select_place_screen.dart';
import 'package:starter_application/features/moment/presentation/state_m/cubit/moment_cubit.dart';

import '../../../../../../core/common/costum_modules/screen_notifier.dart';

class SelectPlaceScreenNotifier extends ScreenNotifier {
  SelectPlaceScreenNotifier(this.param);

  /// Fields
  late BuildContext context;
  late String authToken;
  final SelectPlaceScreenParam param;
  final MomentCubit findPlaceCubit = MomentCubit();
  final searchController = TextEditingController(text: null);
  final searchFocusNode = FocusNode();
  final searchKey = GlobalKey<FormFieldState>();
  List<FindPlaceResultEntity> _places = [];

  /// Getters and Setters
  List<FindPlaceResultEntity> get places => this._places;
  set places(List<FindPlaceResultEntity> places) {
    this._places = places;
    notifyListeners();
  }

  /// Methods
  void onSearchSubmitted() {
    sendSearchRequest();
  }

  void sendSearchRequest() {
    findPlaceCubit.findPlace(
      FindPlaceParam(
        input: searchController.text,
      ),
    );
  }

  void onSelectPlaceTap(int index) {
    param.onPlaceSelected?.call([places[index]]);
    Nav.pop();
  }

  @override
  void closeNotifier() {
    findPlaceCubit.close();
    searchFocusNode.dispose();
    searchController.dispose();
    this.dispose();
  }
}
