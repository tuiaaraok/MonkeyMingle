import 'package:equatable/equatable.dart';
import 'package:flutter/services.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';

abstract class PetState extends Equatable {
  const PetState();

  @override
  List<Object?> get props => [];
}

class PetEmpty extends PetState {
  @override
  List<Object> get props => [];
}

class PetImageUpdated extends PetState {
  final Uint8List? image;
  const PetImageUpdated({required this.image});

  @override
  List<Object?> get props => [image];
}

class PetsListState extends PetState {
  final List<PetsEntity> petList;

  const PetsListState(this.petList);

  @override
  List<Object> get props => [petList];
}

// ignore: must_be_immutable
class PetGet extends PetState {
  PetsEntity? myPet;
  PetGet({required this.myPet});
  @override
  List<Object?> get props => [myPet];
}
