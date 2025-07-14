import 'package:monkeq/domain/entities/pet_entity.dart';

abstract class IPetRepository {
  Future<void> savePet(PetsEntity user);
  PetsEntity? getPet(String key);
  List<PetsEntity> getAllPet();
  updateProcedure(String petId, PetProcedureEntity procedure);
  updateFeedingMode(String petId, PetNewFeedingModeEntity feedingMode);
}
