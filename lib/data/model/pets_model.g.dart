// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PetProcedureModelAdapter extends TypeAdapter<PetProcedureModel> {
  @override
  final int typeId = 2;

  @override
  PetProcedureModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PetProcedureModel(
      date: fields[1] as DateTime,
      type: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PetProcedureModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetProcedureModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PetNewFeedingModeModelAdapter
    extends TypeAdapter<PetNewFeedingModeModel> {
  @override
  final int typeId = 3;

  @override
  PetNewFeedingModeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PetNewFeedingModeModel(
      meal: (fields[1] as Map).cast<String, String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PetNewFeedingModeModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.meal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetNewFeedingModeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PetsModelAdapter extends TypeAdapter<PetsModel> {
  @override
  final int typeId = 1;

  @override
  PetsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PetsModel(
      id: fields[1] as String,
      animalName: fields[2] as String,
      animalSpecies: fields[3] as String,
      gender: fields[4] as String,
      dateOfBirth: fields[5] as DateTime,
      imageFriend: fields[6] as Uint8List,
      weight: fields[7] as String,
      height: fields[8] as String,
      petProcedureModel: (fields[9] as List?)?.cast<PetProcedureModel>(),
      petNewFeedingModeModel: fields[10] as PetNewFeedingModeModel?,
    );
  }

  @override
  void write(BinaryWriter writer, PetsModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.animalName)
      ..writeByte(3)
      ..write(obj.animalSpecies)
      ..writeByte(4)
      ..write(obj.gender)
      ..writeByte(5)
      ..write(obj.dateOfBirth)
      ..writeByte(6)
      ..write(obj.imageFriend)
      ..writeByte(7)
      ..write(obj.weight)
      ..writeByte(8)
      ..write(obj.height)
      ..writeByte(9)
      ..write(obj.petProcedureModel)
      ..writeByte(10)
      ..write(obj.petNewFeedingModeModel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PetsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetProcedureModelImpl _$$PetProcedureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PetProcedureModelImpl(
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$PetProcedureModelImplToJson(
        _$PetProcedureModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'type': instance.type,
    };

_$PetNewFeedingModeModelImpl _$$PetNewFeedingModeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PetNewFeedingModeModelImpl(
      meal: Map<String, String>.from(json['meal'] as Map),
    );

Map<String, dynamic> _$$PetNewFeedingModeModelImplToJson(
        _$PetNewFeedingModeModelImpl instance) =>
    <String, dynamic>{
      'meal': instance.meal,
    };

_$PetsModelImpl _$$PetsModelImplFromJson(Map<String, dynamic> json) =>
    _$PetsModelImpl(
      id: json['id'] as String,
      animalName: json['animalName'] as String,
      animalSpecies: json['animalSpecies'] as String,
      gender: json['gender'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      imageFriend:
          const Uint8ListConverter().fromJson(json['imageFriend'] as List),
      weight: json['weight'] as String,
      height: json['height'] as String,
      petProcedureModel: (json['petProcedureModel'] as List<dynamic>?)
          ?.map((e) => PetProcedureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      petNewFeedingModeModel: json['petNewFeedingModeModel'] == null
          ? null
          : PetNewFeedingModeModel.fromJson(
              json['petNewFeedingModeModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PetsModelImplToJson(_$PetsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'animalName': instance.animalName,
      'animalSpecies': instance.animalSpecies,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'imageFriend': const Uint8ListConverter().toJson(instance.imageFriend),
      'weight': instance.weight,
      'height': instance.height,
      'petProcedureModel': instance.petProcedureModel,
      'petNewFeedingModeModel': instance.petNewFeedingModeModel,
    };
