import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:monkeq/data/model/pets_model.dart';

@module
abstract class HiveModule {
  @singleton
  @preResolve
  Future<Box<PetsModel>> get petsBox async {
    await Hive.initFlutter();
    Hive.registerAdapter(PetsModelAdapter()); // Make sure you have this adapter
    Hive.registerAdapter(
      PetProcedureModelAdapter(),
    ); // Make sure you have this adapter
    Hive.registerAdapter(
      PetNewFeedingModeModelAdapter(),
    ); // Make sure you have this adapter
    return await Hive.openBox<PetsModel>('pets_box');
  }
}

@injectable
class PetLocalDataSource {
  final Box<PetsModel> userBox;
  PetLocalDataSource({required this.userBox});
  PetsModel? getPet(String id) {
    return userBox.get(id);
  }

  Future<void> savePet(PetsModel pet) async {
    userBox.put(pet.id, pet);
  }

  List<PetsModel> getAllPet() {
    return userBox.values.toList();
  }

  updateProcedure(String petId, PetProcedureModel procedure) async {
    final pet = userBox.get(petId);
    if (pet != null) {
      final updatedPet = pet.copyWith(
        petProcedureModel: [...?pet.petProcedureModel, procedure],
      );
      await userBox.put(petId, updatedPet);
    }
  }

  updateFeedingMode(String petId, PetNewFeedingModeModel feedingMode) async {
    final pet = userBox.get(petId);
    if (pet != null) {
      final updatedPet = pet.copyWith(petNewFeedingModeModel: feedingMode);
      await userBox.put(petId, updatedPet);
    }
  }
}
