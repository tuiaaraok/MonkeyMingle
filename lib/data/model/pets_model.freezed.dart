// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PetProcedureModel _$PetProcedureModelFromJson(Map<String, dynamic> json) {
  return _PetProcedureModel.fromJson(json);
}

/// @nodoc
mixin _$PetProcedureModel {
  @HiveField(1)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(2)
  String get type => throw _privateConstructorUsedError;

  /// Serializes this PetProcedureModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetProcedureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetProcedureModelCopyWith<PetProcedureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetProcedureModelCopyWith<$Res> {
  factory $PetProcedureModelCopyWith(
          PetProcedureModel value, $Res Function(PetProcedureModel) then) =
      _$PetProcedureModelCopyWithImpl<$Res, PetProcedureModel>;
  @useResult
  $Res call({@HiveField(1) DateTime date, @HiveField(2) String type});
}

/// @nodoc
class _$PetProcedureModelCopyWithImpl<$Res, $Val extends PetProcedureModel>
    implements $PetProcedureModelCopyWith<$Res> {
  _$PetProcedureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetProcedureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetProcedureModelImplCopyWith<$Res>
    implements $PetProcedureModelCopyWith<$Res> {
  factory _$$PetProcedureModelImplCopyWith(_$PetProcedureModelImpl value,
          $Res Function(_$PetProcedureModelImpl) then) =
      __$$PetProcedureModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(1) DateTime date, @HiveField(2) String type});
}

/// @nodoc
class __$$PetProcedureModelImplCopyWithImpl<$Res>
    extends _$PetProcedureModelCopyWithImpl<$Res, _$PetProcedureModelImpl>
    implements _$$PetProcedureModelImplCopyWith<$Res> {
  __$$PetProcedureModelImplCopyWithImpl(_$PetProcedureModelImpl _value,
      $Res Function(_$PetProcedureModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetProcedureModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$PetProcedureModelImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$PetProcedureModelImpl extends _PetProcedureModel {
  const _$PetProcedureModelImpl(
      {@HiveField(1) required this.date, @HiveField(2) required this.type})
      : super._();

  factory _$PetProcedureModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetProcedureModelImplFromJson(json);

  @override
  @HiveField(1)
  final DateTime date;
  @override
  @HiveField(2)
  final String type;

  @override
  String toString() {
    return 'PetProcedureModel(date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetProcedureModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, type);

  /// Create a copy of PetProcedureModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetProcedureModelImplCopyWith<_$PetProcedureModelImpl> get copyWith =>
      __$$PetProcedureModelImplCopyWithImpl<_$PetProcedureModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetProcedureModelImplToJson(
      this,
    );
  }
}

abstract class _PetProcedureModel extends PetProcedureModel {
  const factory _PetProcedureModel(
      {@HiveField(1) required final DateTime date,
      @HiveField(2) required final String type}) = _$PetProcedureModelImpl;
  const _PetProcedureModel._() : super._();

  factory _PetProcedureModel.fromJson(Map<String, dynamic> json) =
      _$PetProcedureModelImpl.fromJson;

  @override
  @HiveField(1)
  DateTime get date;
  @override
  @HiveField(2)
  String get type;

  /// Create a copy of PetProcedureModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetProcedureModelImplCopyWith<_$PetProcedureModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PetNewFeedingModeModel _$PetNewFeedingModeModelFromJson(
    Map<String, dynamic> json) {
  return _PetNewFeedingModeModel.fromJson(json);
}

/// @nodoc
mixin _$PetNewFeedingModeModel {
  @HiveField(1)
  Map<String, String> get meal => throw _privateConstructorUsedError;

  /// Serializes this PetNewFeedingModeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetNewFeedingModeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetNewFeedingModeModelCopyWith<PetNewFeedingModeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetNewFeedingModeModelCopyWith<$Res> {
  factory $PetNewFeedingModeModelCopyWith(PetNewFeedingModeModel value,
          $Res Function(PetNewFeedingModeModel) then) =
      _$PetNewFeedingModeModelCopyWithImpl<$Res, PetNewFeedingModeModel>;
  @useResult
  $Res call({@HiveField(1) Map<String, String> meal});
}

/// @nodoc
class _$PetNewFeedingModeModelCopyWithImpl<$Res,
        $Val extends PetNewFeedingModeModel>
    implements $PetNewFeedingModeModelCopyWith<$Res> {
  _$PetNewFeedingModeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetNewFeedingModeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_value.copyWith(
      meal: null == meal
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetNewFeedingModeModelImplCopyWith<$Res>
    implements $PetNewFeedingModeModelCopyWith<$Res> {
  factory _$$PetNewFeedingModeModelImplCopyWith(
          _$PetNewFeedingModeModelImpl value,
          $Res Function(_$PetNewFeedingModeModelImpl) then) =
      __$$PetNewFeedingModeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(1) Map<String, String> meal});
}

/// @nodoc
class __$$PetNewFeedingModeModelImplCopyWithImpl<$Res>
    extends _$PetNewFeedingModeModelCopyWithImpl<$Res,
        _$PetNewFeedingModeModelImpl>
    implements _$$PetNewFeedingModeModelImplCopyWith<$Res> {
  __$$PetNewFeedingModeModelImplCopyWithImpl(
      _$PetNewFeedingModeModelImpl _value,
      $Res Function(_$PetNewFeedingModeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetNewFeedingModeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meal = null,
  }) {
    return _then(_$PetNewFeedingModeModelImpl(
      meal: null == meal
          ? _value._meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$PetNewFeedingModeModelImpl extends _PetNewFeedingModeModel {
  const _$PetNewFeedingModeModelImpl(
      {@HiveField(1) required final Map<String, String> meal})
      : _meal = meal,
        super._();

  factory _$PetNewFeedingModeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetNewFeedingModeModelImplFromJson(json);

  final Map<String, String> _meal;
  @override
  @HiveField(1)
  Map<String, String> get meal {
    if (_meal is EqualUnmodifiableMapView) return _meal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meal);
  }

  @override
  String toString() {
    return 'PetNewFeedingModeModel(meal: $meal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetNewFeedingModeModelImpl &&
            const DeepCollectionEquality().equals(other._meal, _meal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meal));

  /// Create a copy of PetNewFeedingModeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetNewFeedingModeModelImplCopyWith<_$PetNewFeedingModeModelImpl>
      get copyWith => __$$PetNewFeedingModeModelImplCopyWithImpl<
          _$PetNewFeedingModeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetNewFeedingModeModelImplToJson(
      this,
    );
  }
}

abstract class _PetNewFeedingModeModel extends PetNewFeedingModeModel {
  const factory _PetNewFeedingModeModel(
          {@HiveField(1) required final Map<String, String> meal}) =
      _$PetNewFeedingModeModelImpl;
  const _PetNewFeedingModeModel._() : super._();

  factory _PetNewFeedingModeModel.fromJson(Map<String, dynamic> json) =
      _$PetNewFeedingModeModelImpl.fromJson;

  @override
  @HiveField(1)
  Map<String, String> get meal;

  /// Create a copy of PetNewFeedingModeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetNewFeedingModeModelImplCopyWith<_$PetNewFeedingModeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PetsModel _$PetsModelFromJson(Map<String, dynamic> json) {
  return _PetsModel.fromJson(json);
}

/// @nodoc
mixin _$PetsModel {
  @HiveField(1)
  String get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String get animalName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get animalSpecies => throw _privateConstructorUsedError;
  @HiveField(4)
  String get gender => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  @HiveField(6)
  @Uint8ListConverter()
  Uint8List get imageFriend => throw _privateConstructorUsedError;
  @HiveField(7)
  String get weight => throw _privateConstructorUsedError;
  @HiveField(8)
  String get height => throw _privateConstructorUsedError;
  @HiveField(9)
  List<PetProcedureModel>? get petProcedureModel =>
      throw _privateConstructorUsedError;
  @HiveField(10)
  PetNewFeedingModeModel? get petNewFeedingModeModel =>
      throw _privateConstructorUsedError;

  /// Serializes this PetsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PetsModelCopyWith<PetsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetsModelCopyWith<$Res> {
  factory $PetsModelCopyWith(PetsModel value, $Res Function(PetsModel) then) =
      _$PetsModelCopyWithImpl<$Res, PetsModel>;
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String animalName,
      @HiveField(3) String animalSpecies,
      @HiveField(4) String gender,
      @HiveField(5) DateTime dateOfBirth,
      @HiveField(6) @Uint8ListConverter() Uint8List imageFriend,
      @HiveField(7) String weight,
      @HiveField(8) String height,
      @HiveField(9) List<PetProcedureModel>? petProcedureModel,
      @HiveField(10) PetNewFeedingModeModel? petNewFeedingModeModel});

  $PetNewFeedingModeModelCopyWith<$Res>? get petNewFeedingModeModel;
}

/// @nodoc
class _$PetsModelCopyWithImpl<$Res, $Val extends PetsModel>
    implements $PetsModelCopyWith<$Res> {
  _$PetsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animalName = null,
    Object? animalSpecies = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? imageFriend = null,
    Object? weight = null,
    Object? height = null,
    Object? petProcedureModel = freezed,
    Object? petNewFeedingModeModel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animalName: null == animalName
          ? _value.animalName
          : animalName // ignore: cast_nullable_to_non_nullable
              as String,
      animalSpecies: null == animalSpecies
          ? _value.animalSpecies
          : animalSpecies // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageFriend: null == imageFriend
          ? _value.imageFriend
          : imageFriend // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      petProcedureModel: freezed == petProcedureModel
          ? _value.petProcedureModel
          : petProcedureModel // ignore: cast_nullable_to_non_nullable
              as List<PetProcedureModel>?,
      petNewFeedingModeModel: freezed == petNewFeedingModeModel
          ? _value.petNewFeedingModeModel
          : petNewFeedingModeModel // ignore: cast_nullable_to_non_nullable
              as PetNewFeedingModeModel?,
    ) as $Val);
  }

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PetNewFeedingModeModelCopyWith<$Res>? get petNewFeedingModeModel {
    if (_value.petNewFeedingModeModel == null) {
      return null;
    }

    return $PetNewFeedingModeModelCopyWith<$Res>(_value.petNewFeedingModeModel!,
        (value) {
      return _then(_value.copyWith(petNewFeedingModeModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PetsModelImplCopyWith<$Res>
    implements $PetsModelCopyWith<$Res> {
  factory _$$PetsModelImplCopyWith(
          _$PetsModelImpl value, $Res Function(_$PetsModelImpl) then) =
      __$$PetsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(1) String id,
      @HiveField(2) String animalName,
      @HiveField(3) String animalSpecies,
      @HiveField(4) String gender,
      @HiveField(5) DateTime dateOfBirth,
      @HiveField(6) @Uint8ListConverter() Uint8List imageFriend,
      @HiveField(7) String weight,
      @HiveField(8) String height,
      @HiveField(9) List<PetProcedureModel>? petProcedureModel,
      @HiveField(10) PetNewFeedingModeModel? petNewFeedingModeModel});

  @override
  $PetNewFeedingModeModelCopyWith<$Res>? get petNewFeedingModeModel;
}

/// @nodoc
class __$$PetsModelImplCopyWithImpl<$Res>
    extends _$PetsModelCopyWithImpl<$Res, _$PetsModelImpl>
    implements _$$PetsModelImplCopyWith<$Res> {
  __$$PetsModelImplCopyWithImpl(
      _$PetsModelImpl _value, $Res Function(_$PetsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? animalName = null,
    Object? animalSpecies = null,
    Object? gender = null,
    Object? dateOfBirth = null,
    Object? imageFriend = null,
    Object? weight = null,
    Object? height = null,
    Object? petProcedureModel = freezed,
    Object? petNewFeedingModeModel = freezed,
  }) {
    return _then(_$PetsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      animalName: null == animalName
          ? _value.animalName
          : animalName // ignore: cast_nullable_to_non_nullable
              as String,
      animalSpecies: null == animalSpecies
          ? _value.animalSpecies
          : animalSpecies // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      imageFriend: null == imageFriend
          ? _value.imageFriend
          : imageFriend // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      petProcedureModel: freezed == petProcedureModel
          ? _value._petProcedureModel
          : petProcedureModel // ignore: cast_nullable_to_non_nullable
              as List<PetProcedureModel>?,
      petNewFeedingModeModel: freezed == petNewFeedingModeModel
          ? _value.petNewFeedingModeModel
          : petNewFeedingModeModel // ignore: cast_nullable_to_non_nullable
              as PetNewFeedingModeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveField(0)
class _$PetsModelImpl extends _PetsModel {
  const _$PetsModelImpl(
      {@HiveField(1) required this.id,
      @HiveField(2) required this.animalName,
      @HiveField(3) required this.animalSpecies,
      @HiveField(4) required this.gender,
      @HiveField(5) required this.dateOfBirth,
      @HiveField(6) @Uint8ListConverter() required this.imageFriend,
      @HiveField(7) required this.weight,
      @HiveField(8) required this.height,
      @HiveField(9) final List<PetProcedureModel>? petProcedureModel,
      @HiveField(10) this.petNewFeedingModeModel})
      : _petProcedureModel = petProcedureModel,
        super._();

  factory _$PetsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetsModelImplFromJson(json);

  @override
  @HiveField(1)
  final String id;
  @override
  @HiveField(2)
  final String animalName;
  @override
  @HiveField(3)
  final String animalSpecies;
  @override
  @HiveField(4)
  final String gender;
  @override
  @HiveField(5)
  final DateTime dateOfBirth;
  @override
  @HiveField(6)
  @Uint8ListConverter()
  final Uint8List imageFriend;
  @override
  @HiveField(7)
  final String weight;
  @override
  @HiveField(8)
  final String height;
  final List<PetProcedureModel>? _petProcedureModel;
  @override
  @HiveField(9)
  List<PetProcedureModel>? get petProcedureModel {
    final value = _petProcedureModel;
    if (value == null) return null;
    if (_petProcedureModel is EqualUnmodifiableListView)
      return _petProcedureModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(10)
  final PetNewFeedingModeModel? petNewFeedingModeModel;

  @override
  String toString() {
    return 'PetsModel(id: $id, animalName: $animalName, animalSpecies: $animalSpecies, gender: $gender, dateOfBirth: $dateOfBirth, imageFriend: $imageFriend, weight: $weight, height: $height, petProcedureModel: $petProcedureModel, petNewFeedingModeModel: $petNewFeedingModeModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.animalName, animalName) ||
                other.animalName == animalName) &&
            (identical(other.animalSpecies, animalSpecies) ||
                other.animalSpecies == animalSpecies) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.imageFriend, imageFriend) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._petProcedureModel, _petProcedureModel) &&
            (identical(other.petNewFeedingModeModel, petNewFeedingModeModel) ||
                other.petNewFeedingModeModel == petNewFeedingModeModel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      animalName,
      animalSpecies,
      gender,
      dateOfBirth,
      const DeepCollectionEquality().hash(imageFriend),
      weight,
      height,
      const DeepCollectionEquality().hash(_petProcedureModel),
      petNewFeedingModeModel);

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PetsModelImplCopyWith<_$PetsModelImpl> get copyWith =>
      __$$PetsModelImplCopyWithImpl<_$PetsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetsModelImplToJson(
      this,
    );
  }
}

abstract class _PetsModel extends PetsModel {
  const factory _PetsModel(
      {@HiveField(1) required final String id,
      @HiveField(2) required final String animalName,
      @HiveField(3) required final String animalSpecies,
      @HiveField(4) required final String gender,
      @HiveField(5) required final DateTime dateOfBirth,
      @HiveField(6) @Uint8ListConverter() required final Uint8List imageFriend,
      @HiveField(7) required final String weight,
      @HiveField(8) required final String height,
      @HiveField(9) final List<PetProcedureModel>? petProcedureModel,
      @HiveField(10)
      final PetNewFeedingModeModel? petNewFeedingModeModel}) = _$PetsModelImpl;
  const _PetsModel._() : super._();

  factory _PetsModel.fromJson(Map<String, dynamic> json) =
      _$PetsModelImpl.fromJson;

  @override
  @HiveField(1)
  String get id;
  @override
  @HiveField(2)
  String get animalName;
  @override
  @HiveField(3)
  String get animalSpecies;
  @override
  @HiveField(4)
  String get gender;
  @override
  @HiveField(5)
  DateTime get dateOfBirth;
  @override
  @HiveField(6)
  @Uint8ListConverter()
  Uint8List get imageFriend;
  @override
  @HiveField(7)
  String get weight;
  @override
  @HiveField(8)
  String get height;
  @override
  @HiveField(9)
  List<PetProcedureModel>? get petProcedureModel;
  @override
  @HiveField(10)
  PetNewFeedingModeModel? get petNewFeedingModeModel;

  /// Create a copy of PetsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PetsModelImplCopyWith<_$PetsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
