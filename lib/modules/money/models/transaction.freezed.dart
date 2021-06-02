// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'income':
      return Income.fromJson(json);
    case 'expenses':
      return Expenses.fromJson(json);
    case 'move':
      return Move.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$TransactionTearOff {
  const _$TransactionTearOff();

  Income income(double value, MoneyBox moneyBox) {
    return Income(
      value,
      moneyBox,
    );
  }

  Expenses expenses(double value, MoneyBox moneyBox) {
    return Expenses(
      value,
      moneyBox,
    );
  }

  Move move(double value, MoneyBox from, MoneyBox to) {
    return Move(
      value,
      from,
      to,
    );
  }

  Transaction fromJson(Map<String, Object> json) {
    return Transaction.fromJson(json);
  }
}

/// @nodoc
const $Transaction = _$TransactionTearOff();

/// @nodoc
mixin _$Transaction {
  double get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, MoneyBox moneyBox) income,
    required TResult Function(double value, MoneyBox moneyBox) expenses,
    required TResult Function(double value, MoneyBox from, MoneyBox to) move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, MoneyBox moneyBox)? income,
    TResult Function(double value, MoneyBox moneyBox)? expenses,
    TResult Function(double value, MoneyBox from, MoneyBox to)? move,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Income value) income,
    required TResult Function(Expenses value) expenses,
    required TResult Function(Move value) move,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Income value)? income,
    TResult Function(Expenses value)? expenses,
    TResult Function(Move value)? move,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  final Transaction _value;
  // ignore: unused_field
  final $Res Function(Transaction) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $IncomeCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory $IncomeCopyWith(Income value, $Res Function(Income) then) =
      _$IncomeCopyWithImpl<$Res>;
  @override
  $Res call({double value, MoneyBox moneyBox});

  $MoneyBoxCopyWith<$Res> get moneyBox;
}

/// @nodoc
class _$IncomeCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements $IncomeCopyWith<$Res> {
  _$IncomeCopyWithImpl(Income _value, $Res Function(Income) _then)
      : super(_value, (v) => _then(v as Income));

  @override
  Income get _value => super._value as Income;

  @override
  $Res call({
    Object? value = freezed,
    Object? moneyBox = freezed,
  }) {
    return _then(Income(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      moneyBox == freezed
          ? _value.moneyBox
          : moneyBox // ignore: cast_nullable_to_non_nullable
              as MoneyBox,
    ));
  }

  @override
  $MoneyBoxCopyWith<$Res> get moneyBox {
    return $MoneyBoxCopyWith<$Res>(_value.moneyBox, (value) {
      return _then(_value.copyWith(moneyBox: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Income implements Income {
  const _$Income(this.value, this.moneyBox);

  factory _$Income.fromJson(Map<String, dynamic> json) =>
      _$_$IncomeFromJson(json);

  @override
  final double value;
  @override
  final MoneyBox moneyBox;

  @override
  String toString() {
    return 'Transaction.income(value: $value, moneyBox: $moneyBox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Income &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.moneyBox, moneyBox) ||
                const DeepCollectionEquality()
                    .equals(other.moneyBox, moneyBox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(moneyBox);

  @JsonKey(ignore: true)
  @override
  $IncomeCopyWith<Income> get copyWith =>
      _$IncomeCopyWithImpl<Income>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, MoneyBox moneyBox) income,
    required TResult Function(double value, MoneyBox moneyBox) expenses,
    required TResult Function(double value, MoneyBox from, MoneyBox to) move,
  }) {
    return income(value, moneyBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, MoneyBox moneyBox)? income,
    TResult Function(double value, MoneyBox moneyBox)? expenses,
    TResult Function(double value, MoneyBox from, MoneyBox to)? move,
    required TResult orElse(),
  }) {
    if (income != null) {
      return income(value, moneyBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Income value) income,
    required TResult Function(Expenses value) expenses,
    required TResult Function(Move value) move,
  }) {
    return income(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Income value)? income,
    TResult Function(Expenses value)? expenses,
    TResult Function(Move value)? move,
    required TResult orElse(),
  }) {
    if (income != null) {
      return income(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IncomeToJson(this)..['runtimeType'] = 'income';
  }
}

abstract class Income implements Transaction {
  const factory Income(double value, MoneyBox moneyBox) = _$Income;

  factory Income.fromJson(Map<String, dynamic> json) = _$Income.fromJson;

  @override
  double get value => throw _privateConstructorUsedError;
  MoneyBox get moneyBox => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $IncomeCopyWith<Income> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpensesCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory $ExpensesCopyWith(Expenses value, $Res Function(Expenses) then) =
      _$ExpensesCopyWithImpl<$Res>;
  @override
  $Res call({double value, MoneyBox moneyBox});

  $MoneyBoxCopyWith<$Res> get moneyBox;
}

/// @nodoc
class _$ExpensesCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements $ExpensesCopyWith<$Res> {
  _$ExpensesCopyWithImpl(Expenses _value, $Res Function(Expenses) _then)
      : super(_value, (v) => _then(v as Expenses));

  @override
  Expenses get _value => super._value as Expenses;

  @override
  $Res call({
    Object? value = freezed,
    Object? moneyBox = freezed,
  }) {
    return _then(Expenses(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      moneyBox == freezed
          ? _value.moneyBox
          : moneyBox // ignore: cast_nullable_to_non_nullable
              as MoneyBox,
    ));
  }

  @override
  $MoneyBoxCopyWith<$Res> get moneyBox {
    return $MoneyBoxCopyWith<$Res>(_value.moneyBox, (value) {
      return _then(_value.copyWith(moneyBox: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Expenses implements Expenses {
  const _$Expenses(this.value, this.moneyBox);

  factory _$Expenses.fromJson(Map<String, dynamic> json) =>
      _$_$ExpensesFromJson(json);

  @override
  final double value;
  @override
  final MoneyBox moneyBox;

  @override
  String toString() {
    return 'Transaction.expenses(value: $value, moneyBox: $moneyBox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Expenses &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.moneyBox, moneyBox) ||
                const DeepCollectionEquality()
                    .equals(other.moneyBox, moneyBox)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(moneyBox);

  @JsonKey(ignore: true)
  @override
  $ExpensesCopyWith<Expenses> get copyWith =>
      _$ExpensesCopyWithImpl<Expenses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, MoneyBox moneyBox) income,
    required TResult Function(double value, MoneyBox moneyBox) expenses,
    required TResult Function(double value, MoneyBox from, MoneyBox to) move,
  }) {
    return expenses(value, moneyBox);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, MoneyBox moneyBox)? income,
    TResult Function(double value, MoneyBox moneyBox)? expenses,
    TResult Function(double value, MoneyBox from, MoneyBox to)? move,
    required TResult orElse(),
  }) {
    if (expenses != null) {
      return expenses(value, moneyBox);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Income value) income,
    required TResult Function(Expenses value) expenses,
    required TResult Function(Move value) move,
  }) {
    return expenses(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Income value)? income,
    TResult Function(Expenses value)? expenses,
    TResult Function(Move value)? move,
    required TResult orElse(),
  }) {
    if (expenses != null) {
      return expenses(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ExpensesToJson(this)..['runtimeType'] = 'expenses';
  }
}

abstract class Expenses implements Transaction {
  const factory Expenses(double value, MoneyBox moneyBox) = _$Expenses;

  factory Expenses.fromJson(Map<String, dynamic> json) = _$Expenses.fromJson;

  @override
  double get value => throw _privateConstructorUsedError;
  MoneyBox get moneyBox => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExpensesCopyWith<Expenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory $MoveCopyWith(Move value, $Res Function(Move) then) =
      _$MoveCopyWithImpl<$Res>;
  @override
  $Res call({double value, MoneyBox from, MoneyBox to});

  $MoneyBoxCopyWith<$Res> get from;
  $MoneyBoxCopyWith<$Res> get to;
}

/// @nodoc
class _$MoveCopyWithImpl<$Res> extends _$TransactionCopyWithImpl<$Res>
    implements $MoveCopyWith<$Res> {
  _$MoveCopyWithImpl(Move _value, $Res Function(Move) _then)
      : super(_value, (v) => _then(v as Move));

  @override
  Move get _value => super._value as Move;

  @override
  $Res call({
    Object? value = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(Move(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as MoneyBox,
      to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as MoneyBox,
    ));
  }

  @override
  $MoneyBoxCopyWith<$Res> get from {
    return $MoneyBoxCopyWith<$Res>(_value.from, (value) {
      return _then(_value.copyWith(from: value));
    });
  }

  @override
  $MoneyBoxCopyWith<$Res> get to {
    return $MoneyBoxCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$Move implements Move {
  const _$Move(this.value, this.from, this.to);

  factory _$Move.fromJson(Map<String, dynamic> json) => _$_$MoveFromJson(json);

  @override
  final double value;
  @override
  final MoneyBox from;
  @override
  final MoneyBox to;

  @override
  String toString() {
    return 'Transaction.move(value: $value, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Move &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.from, from) ||
                const DeepCollectionEquality().equals(other.from, from)) &&
            (identical(other.to, to) ||
                const DeepCollectionEquality().equals(other.to, to)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(from) ^
      const DeepCollectionEquality().hash(to);

  @JsonKey(ignore: true)
  @override
  $MoveCopyWith<Move> get copyWith =>
      _$MoveCopyWithImpl<Move>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value, MoneyBox moneyBox) income,
    required TResult Function(double value, MoneyBox moneyBox) expenses,
    required TResult Function(double value, MoneyBox from, MoneyBox to) move,
  }) {
    return move(value, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value, MoneyBox moneyBox)? income,
    TResult Function(double value, MoneyBox moneyBox)? expenses,
    TResult Function(double value, MoneyBox from, MoneyBox to)? move,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(value, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Income value) income,
    required TResult Function(Expenses value) expenses,
    required TResult Function(Move value) move,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Income value)? income,
    TResult Function(Expenses value)? expenses,
    TResult Function(Move value)? move,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MoveToJson(this)..['runtimeType'] = 'move';
  }
}

abstract class Move implements Transaction {
  const factory Move(double value, MoneyBox from, MoneyBox to) = _$Move;

  factory Move.fromJson(Map<String, dynamic> json) = _$Move.fromJson;

  @override
  double get value => throw _privateConstructorUsedError;
  MoneyBox get from => throw _privateConstructorUsedError;
  MoneyBox get to => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MoveCopyWith<Move> get copyWith => throw _privateConstructorUsedError;
}
