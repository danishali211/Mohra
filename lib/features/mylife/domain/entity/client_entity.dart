import 'package:starter_application/core/entities/base_entity.dart';

class ClientEntity extends BaseEntity {
  final List<ClientItemEntity>? items;

  final int? totalCount;

  ClientEntity(
      {this.items,
      this.totalCount,
 });

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ClientItemEntity extends BaseEntity {
  ClientItemEntity({
    this.value,
    this.text,
  });

  String? value;
  String? text;
  bool isSelect=false;

  @override
  List<Object?> get props => [];
}
