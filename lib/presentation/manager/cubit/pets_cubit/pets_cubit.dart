import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:monkeq/domain/entities/pet_entity.dart';
import 'package:monkeq/domain/use_caces/pet_use_cases.dart';
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_state.dart';

@injectable
class PetCubit extends Cubit<PetState> {
  final GetAllPets getAllPets;
  final SavePet savePet;
  final GetPet getPet;
  final UpdateFeedingMode updateFeedingMode;
  final UpdateProcedure updateProcedure;
  PetCubit({
    required this.getAllPets,
    required this.savePet,
    required this.getPet,
    required this.updateFeedingMode,
    required this.updateProcedure,
  }) : super(PetEmpty());

  void getPetsList() {
    emit(PetsListState(getAllPets()));
  }

  Future<void> getLostData() async {
    final picker = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picker == null) return;
    final imageBytes = await picker.readAsBytes();
    emit(PetImageUpdated(image: Uint8List.fromList(imageBytes)));
  }

  void saveMyPet(PetsEntity petElement) {
    savePet(petElement);
    getPetsList();
  }

  void getMyPet(String petIndex) async {
    emit(PetGet(myPet: getPet(petIndex)));
  }

  void updateFeedingModeEvent(
    String petId,
    PetNewFeedingModeEntity feedingMode,
  ) async {
    await updateFeedingMode(petId, feedingMode);
    getMyPet(petId);
  }

  void updateProcedurevent(String petId, PetProcedureEntity procedure) {
    updateProcedure(petId, procedure);
    getMyPet(petId);
  }
}
