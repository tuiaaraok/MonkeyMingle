// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:injectable/injectable.dart' as _i526;
import 'package:monkeq/data/data_source/pet_local_data_source.dart' as _i828;
import 'package:monkeq/data/model/pets_model.dart' as _i149;
import 'package:monkeq/data/repository/pet_repository.dart' as _i81;
import 'package:monkeq/domain/repository/pet_repository.dart' as _i305;
import 'package:monkeq/domain/use_caces/pet_use_cases.dart' as _i913;
import 'package:monkeq/presentation/manager/cubit/pets_cubit/pets_cubit.dart'
    as _i852;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final hiveModule = _$HiveModule();
    await gh.singletonAsync<_i986.Box<_i149.PetsModel>>(
      () => hiveModule.petsBox,
      preResolve: true,
    );
    gh.factory<_i828.PetLocalDataSource>(() =>
        _i828.PetLocalDataSource(userBox: gh<_i986.Box<_i149.PetsModel>>()));
    gh.lazySingleton<_i305.IPetRepository>(
        () => _i81.PetRepository(gh<_i828.PetLocalDataSource>()));
    gh.lazySingleton<_i913.SavePet>(
        () => _i913.SavePet(gh<_i305.IPetRepository>()));
    gh.lazySingleton<_i913.GetPet>(
        () => _i913.GetPet(gh<_i305.IPetRepository>()));
    gh.lazySingleton<_i913.GetAllPets>(
        () => _i913.GetAllPets(gh<_i305.IPetRepository>()));
    gh.lazySingleton<_i913.UpdateFeedingMode>(
        () => _i913.UpdateFeedingMode(gh<_i305.IPetRepository>()));
    gh.lazySingleton<_i913.UpdateProcedure>(
        () => _i913.UpdateProcedure(gh<_i305.IPetRepository>()));
    gh.factory<_i852.PetCubit>(() => _i852.PetCubit(
          getAllPets: gh<_i913.GetAllPets>(),
          savePet: gh<_i913.SavePet>(),
          getPet: gh<_i913.GetPet>(),
          updateFeedingMode: gh<_i913.UpdateFeedingMode>(),
          updateProcedure: gh<_i913.UpdateProcedure>(),
        ));
    return this;
  }
}

class _$HiveModule extends _i828.HiveModule {}
