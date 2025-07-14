import 'package:injectable/injectable.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';

import 'package:monkeq/domain/repository/pet_repository.dart';

@lazySingleton
class SavePet {
  final IPetRepository _repository;

  SavePet(this._repository);

  Future<void> call(PetsEntity user) async {
    await _repository.savePet(user);
  }
}

@lazySingleton
class GetPet {
  final IPetRepository _repository;

  GetPet(this._repository);

  PetsEntity? call(String key) {
    return _repository.getPet(key);
  }
}

@lazySingleton
class GetAllPets {
  final IPetRepository _repository;

  GetAllPets(this._repository);

  List<PetsEntity> call() {
    return _repository.getAllPet();
  }
}

@lazySingleton
class UpdateFeedingMode {
  final IPetRepository _repository;

  UpdateFeedingMode(this._repository);

  Future<void> call(String petId, PetNewFeedingModeEntity feedingMode) async {
    await _repository.updateFeedingMode(petId, feedingMode);
  }
}

@lazySingleton
class UpdateProcedure {
  final IPetRepository _repository;

  UpdateProcedure(this._repository);

  Future<void> call(String petId, PetProcedureEntity procedure) async {
    await _repository.updateProcedure(petId, procedure);
  }
}
