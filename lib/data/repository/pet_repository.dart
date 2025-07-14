import 'package:injectable/injectable.dart';
import 'package:monkeq/data/data_source/pet_local_data_source.dart';
import 'package:monkeq/data/model/pets_model.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';

import 'package:monkeq/domain/repository/pet_repository.dart';

@LazySingleton(as: IPetRepository)
class PetRepository implements IPetRepository {
  PetLocalDataSource petLocalDataSource;
  PetRepository(this.petLocalDataSource);

  @override
  Future<void> savePet(PetsEntity petEntity) async {
    await petLocalDataSource.savePet(PetsModel.fromPetsEntity(petEntity));
  }

  @override
  PetsEntity? getPet(String key) {
    return petLocalDataSource.getPet(key)?.toEntity();
  }

  @override
  List<PetsEntity> getAllPet() {
    return petLocalDataSource
        .getAllPet()
        .map((toElement) => toElement.toEntity())
        .toList();
  }

  @override
  updateProcedure(String petId, PetProcedureEntity procedure) {
    petLocalDataSource.updateProcedure(
      petId,
      PetProcedureModel.fromEntity(procedure),
    );
  }

  @override
  updateFeedingMode(String petId, PetNewFeedingModeEntity feedingMode) {
    petLocalDataSource.updateFeedingMode(
      petId,
      PetNewFeedingModeModel.fromEntity(feedingMode),
    );
  }
}
