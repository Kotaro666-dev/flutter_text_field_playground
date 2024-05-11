// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextFieldModel {
  TextEditingController get controller => throw _privateConstructorUsedError;
  FocusNode get focusNode => throw _privateConstructorUsedError;
  String get labelText => throw _privateConstructorUsedError;
  String get hintText => throw _privateConstructorUsedError;
  String get helperText => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextFieldModelCopyWith<TextFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextFieldModelCopyWith<$Res> {
  factory $TextFieldModelCopyWith(
          TextFieldModel value, $Res Function(TextFieldModel) then) =
      _$TextFieldModelCopyWithImpl<$Res, TextFieldModel>;
  @useResult
  $Res call(
      {TextEditingController controller,
      FocusNode focusNode,
      String labelText,
      String hintText,
      String helperText,
      String? errorText});
}

/// @nodoc
class _$TextFieldModelCopyWithImpl<$Res, $Val extends TextFieldModel>
    implements $TextFieldModelCopyWith<$Res> {
  _$TextFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? focusNode = null,
    Object? labelText = null,
    Object? hintText = null,
    Object? helperText = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: null == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: null == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      helperText: null == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextFieldModelImplCopyWith<$Res>
    implements $TextFieldModelCopyWith<$Res> {
  factory _$$TextFieldModelImplCopyWith(_$TextFieldModelImpl value,
          $Res Function(_$TextFieldModelImpl) then) =
      __$$TextFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController controller,
      FocusNode focusNode,
      String labelText,
      String hintText,
      String helperText,
      String? errorText});
}

/// @nodoc
class __$$TextFieldModelImplCopyWithImpl<$Res>
    extends _$TextFieldModelCopyWithImpl<$Res, _$TextFieldModelImpl>
    implements _$$TextFieldModelImplCopyWith<$Res> {
  __$$TextFieldModelImplCopyWithImpl(
      _$TextFieldModelImpl _value, $Res Function(_$TextFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? focusNode = null,
    Object? labelText = null,
    Object? hintText = null,
    Object? helperText = null,
    Object? errorText = freezed,
  }) {
    return _then(_$TextFieldModelImpl(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      focusNode: null == focusNode
          ? _value.focusNode
          : focusNode // ignore: cast_nullable_to_non_nullable
              as FocusNode,
      labelText: null == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String,
      hintText: null == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String,
      helperText: null == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TextFieldModelImpl implements _TextFieldModel {
  const _$TextFieldModelImpl(
      {required this.controller,
      required this.focusNode,
      required this.labelText,
      required this.hintText,
      required this.helperText,
      required this.errorText});

  @override
  final TextEditingController controller;
  @override
  final FocusNode focusNode;
  @override
  final String labelText;
  @override
  final String hintText;
  @override
  final String helperText;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'TextFieldModel(controller: $controller, focusNode: $focusNode, labelText: $labelText, hintText: $hintText, helperText: $helperText, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldModelImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, focusNode, labelText,
      hintText, helperText, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldModelImplCopyWith<_$TextFieldModelImpl> get copyWith =>
      __$$TextFieldModelImplCopyWithImpl<_$TextFieldModelImpl>(
          this, _$identity);
}

abstract class _TextFieldModel implements TextFieldModel {
  const factory _TextFieldModel(
      {required final TextEditingController controller,
      required final FocusNode focusNode,
      required final String labelText,
      required final String hintText,
      required final String helperText,
      required final String? errorText}) = _$TextFieldModelImpl;

  @override
  TextEditingController get controller;
  @override
  FocusNode get focusNode;
  @override
  String get labelText;
  @override
  String get hintText;
  @override
  String get helperText;
  @override
  String? get errorText;
  @override
  @JsonKey(ignore: true)
  _$$TextFieldModelImplCopyWith<_$TextFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
