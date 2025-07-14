import 'package:flutter/foundation.dart';

class PetsEntity {
  final String id;
  final String animalName;
  final String animalSpecies;
  final String gender;
  final DateTime dateOfBirth;
  final Uint8List imageFriend;
  final String weight;
  final String height;
  List<PetProcedureEntity>? petProcedureEntity;
  PetNewFeedingModeEntity? petNewFeedingModeEntity;
  PetsEntity({
    required this.id,
    required this.animalName,
    required this.animalSpecies,
    required this.gender,
    required this.dateOfBirth,
    required this.imageFriend,
    required this.weight,
    required this.height,
    this.petNewFeedingModeEntity,
    this.petProcedureEntity,
  });
}

class PetProcedureEntity {
  DateTime date;
  String type;
  PetProcedureEntity({required this.date, required this.type});
}

class PetNewFeedingModeEntity {
  Map<String, String> meal;
  PetNewFeedingModeEntity({required this.meal});
}
