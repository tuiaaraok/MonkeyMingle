import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';

part 'pets_model.freezed.dart';
part 'pets_model.g.dart';

@freezed
@HiveType(typeId: 2)
class PetProcedureModel with _$PetProcedureModel {
  const PetProcedureModel._();

  @HiveField(0)
  const factory PetProcedureModel({
    @HiveField(1) required DateTime date,
    @HiveField(2) required String type,
  }) = _PetProcedureModel;

  PetProcedureEntity toEntity() => PetProcedureEntity(date: date, type: type);
  factory PetProcedureModel.fromEntity(PetProcedureEntity entity) =>
      PetProcedureModel(date: entity.date, type: entity.type);

  factory PetProcedureModel.fromJson(Map<String, dynamic> json) =>
      _$PetProcedureModelFromJson(json);
}

@freezed
@HiveType(typeId: 3)
class PetNewFeedingModeModel with _$PetNewFeedingModeModel {
  const PetNewFeedingModeModel._();

  @HiveField(0)
  const factory PetNewFeedingModeModel({
    @HiveField(1) required Map<String, String> meal,
  }) = _PetNewFeedingModeModel;

  PetNewFeedingModeEntity toEntity() => PetNewFeedingModeEntity(meal: meal);

  factory PetNewFeedingModeModel.fromEntity(PetNewFeedingModeEntity entity) =>
      PetNewFeedingModeModel(meal: entity.meal);

  factory PetNewFeedingModeModel.fromJson(Map<String, dynamic> json) =>
      _$PetNewFeedingModeModelFromJson(json);
}

@freezed
@HiveType(typeId: 1)
class PetsModel with _$PetsModel {
  const PetsModel._();

  @HiveField(0)
  const factory PetsModel({
    @HiveField(1) required String id,
    @HiveField(2) required String animalName,
    @HiveField(3) required String animalSpecies,
    @HiveField(4) required String gender,
    @HiveField(5) required DateTime dateOfBirth,
    @HiveField(6) @Uint8ListConverter() required Uint8List imageFriend,
    @HiveField(7) required String weight,
    @HiveField(8) required String height,
    @HiveField(9) List<PetProcedureModel>? petProcedureModel,
    @HiveField(10) PetNewFeedingModeModel? petNewFeedingModeModel,
  }) = _PetsModel;

  factory PetsModel.fromJson(Map<String, dynamic> json) =>
      _$PetsModelFromJson(json);

  factory PetsModel.fromPetsEntity(PetsEntity entity) => PetsModel(
    id: entity.id,
    animalName: entity.animalName,
    animalSpecies: entity.animalSpecies,
    gender: entity.gender,
    dateOfBirth: entity.dateOfBirth,
    imageFriend: entity.imageFriend,
    weight: entity.weight,
    height: entity.height,
    petProcedureModel:
        entity.petProcedureEntity
            ?.map((e) => PetProcedureModel.fromEntity(e))
            .toList(),
    petNewFeedingModeModel:
        entity.petNewFeedingModeEntity != null
            ? PetNewFeedingModeModel(meal: entity.petNewFeedingModeEntity!.meal)
            : null,
  );

  PetsEntity toEntity() => PetsEntity(
    id: id,
    animalName: animalName,
    animalSpecies: animalSpecies,
    gender: gender,
    dateOfBirth: dateOfBirth,
    imageFriend: imageFriend,
    weight: weight,
    height: height,
    petProcedureEntity:
        petProcedureModel?.map((model) => model.toEntity()).toList(),
    petNewFeedingModeEntity: petNewFeedingModeModel?.toEntity(),
  );
}

class Uint8ListConverter implements JsonConverter<Uint8List, List<dynamic>> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(List<dynamic> json) {
    return Uint8List.fromList(json.cast<int>());
  }

  @override
  List<int> toJson(Uint8List object) {
    return object.toList();
  }
}
