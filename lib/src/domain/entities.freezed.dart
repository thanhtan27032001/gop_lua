// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {
  String get id;
  String get email;
  int get monthlyIncome;
  int get initialBalance;
  int get startDay;
  String get timezone;
  DateTime get createdAt;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<UserProfile> get copyWith =>
      _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.initialBalance, initialBalance) ||
                other.initialBalance == initialBalance) &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, monthlyIncome,
      initialBalance, startDay, timezone, createdAt);

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, monthlyIncome: $monthlyIncome, initialBalance: $initialBalance, startDay: $startDay, timezone: $timezone, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) _then) =
      _$UserProfileCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String email,
      int monthlyIncome,
      int initialBalance,
      int startDay,
      String timezone,
      DateTime createdAt});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? monthlyIncome = null,
    Object? initialBalance = null,
    Object? startDay = null,
    Object? timezone = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyIncome: null == monthlyIncome
          ? _self.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int,
      initialBalance: null == initialBalance
          ? _self.initialBalance
          : initialBalance // ignore: cast_nullable_to_non_nullable
              as int,
      startDay: null == startDay
          ? _self.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserProfile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserProfile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UserProfile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            int monthlyIncome,
            int initialBalance,
            int startDay,
            String timezone,
            DateTime createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.monthlyIncome,
            _that.initialBalance,
            _that.startDay,
            _that.timezone,
            _that.createdAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String email,
            int monthlyIncome,
            int initialBalance,
            int startDay,
            String timezone,
            DateTime createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile():
        return $default(
            _that.id,
            _that.email,
            _that.monthlyIncome,
            _that.initialBalance,
            _that.startDay,
            _that.timezone,
            _that.createdAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String email,
            int monthlyIncome,
            int initialBalance,
            int startDay,
            String timezone,
            DateTime createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfile() when $default != null:
        return $default(
            _that.id,
            _that.email,
            _that.monthlyIncome,
            _that.initialBalance,
            _that.startDay,
            _that.timezone,
            _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _UserProfile implements UserProfile {
  const _UserProfile(
      {required this.id,
      required this.email,
      required this.monthlyIncome,
      required this.initialBalance,
      required this.startDay,
      required this.timezone,
      required this.createdAt});

  @override
  final String id;
  @override
  final String email;
  @override
  final int monthlyIncome;
  @override
  final int initialBalance;
  @override
  final int startDay;
  @override
  final String timezone;
  @override
  final DateTime createdAt;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.monthlyIncome, monthlyIncome) ||
                other.monthlyIncome == monthlyIncome) &&
            (identical(other.initialBalance, initialBalance) ||
                other.initialBalance == initialBalance) &&
            (identical(other.startDay, startDay) ||
                other.startDay == startDay) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, monthlyIncome,
      initialBalance, startDay, timezone, createdAt);

  @override
  String toString() {
    return 'UserProfile(id: $id, email: $email, monthlyIncome: $monthlyIncome, initialBalance: $initialBalance, startDay: $startDay, timezone: $timezone, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) _then) =
      __$UserProfileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      int monthlyIncome,
      int initialBalance,
      int startDay,
      String timezone,
      DateTime createdAt});
}

/// @nodoc
class __$UserProfileCopyWithImpl<$Res> implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? monthlyIncome = null,
    Object? initialBalance = null,
    Object? startDay = null,
    Object? timezone = null,
    Object? createdAt = null,
  }) {
    return _then(_UserProfile(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyIncome: null == monthlyIncome
          ? _self.monthlyIncome
          : monthlyIncome // ignore: cast_nullable_to_non_nullable
              as int,
      initialBalance: null == initialBalance
          ? _self.initialBalance
          : initialBalance // ignore: cast_nullable_to_non_nullable
              as int,
      startDay: null == startDay
          ? _self.startDay
          : startDay // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$Category {
  String get id;
  String get userId;
  String get name;
  EntryType get type;
  String get iconColor;
  bool get isHidden;
  bool get isDefault;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<Category> get copyWith =>
      _$CategoryCopyWithImpl<Category>(this as Category, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, type, iconColor, isHidden, isDefault);

  @override
  String toString() {
    return 'Category(id: $id, userId: $userId, name: $name, type: $type, iconColor: $iconColor, isHidden: $isHidden, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) =
      _$CategoryCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      EntryType type,
      String iconColor,
      bool isHidden,
      bool isDefault});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? type = null,
    Object? iconColor = null,
    Object? isHidden = null,
    Object? isDefault = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      iconColor: null == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Category value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Category value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Category value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, String name, EntryType type,
            String iconColor, bool isHidden, bool isDefault)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.userId, _that.name, _that.type,
            _that.iconColor, _that.isHidden, _that.isDefault);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, String userId, String name, EntryType type,
            String iconColor, bool isHidden, bool isDefault)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category():
        return $default(_that.id, _that.userId, _that.name, _that.type,
            _that.iconColor, _that.isHidden, _that.isDefault);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, String name, EntryType type,
            String iconColor, bool isHidden, bool isDefault)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Category() when $default != null:
        return $default(_that.id, _that.userId, _that.name, _that.type,
            _that.iconColor, _that.isHidden, _that.isDefault);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Category implements Category {
  const _Category(
      {required this.id,
      required this.userId,
      required this.name,
      required this.type,
      required this.iconColor,
      required this.isHidden,
      required this.isDefault});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final EntryType type;
  @override
  final String iconColor;
  @override
  final bool isHidden;
  @override
  final bool isDefault;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.iconColor, iconColor) ||
                other.iconColor == iconColor) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, type, iconColor, isHidden, isDefault);

  @override
  String toString() {
    return 'Category(id: $id, userId: $userId, name: $name, type: $type, iconColor: $iconColor, isHidden: $isHidden, isDefault: $isDefault)';
  }
}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) =
      __$CategoryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      EntryType type,
      String iconColor,
      bool isHidden,
      bool isDefault});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? type = null,
    Object? iconColor = null,
    Object? isHidden = null,
    Object? isDefault = null,
  }) {
    return _then(_Category(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      iconColor: null == iconColor
          ? _self.iconColor
          : iconColor // ignore: cast_nullable_to_non_nullable
              as String,
      isHidden: null == isHidden
          ? _self.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$Transaction {
  String get id;
  String get userId;
  String get categoryId;
  EntryType get type;
  int get amount;
  DateTime get localDate;
  DateTime get occurredAt;
  String? get note;
  DateTime get updatedAt;
  DateTime? get deletedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<Transaction> get copyWith =>
      _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.localDate, localDate) ||
                other.localDate == localDate) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, categoryId, type,
      amount, localDate, occurredAt, note, updatedAt, deletedAt);

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, categoryId: $categoryId, type: $type, amount: $amount, localDate: $localDate, occurredAt: $occurredAt, note: $note, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) _then) =
      _$TransactionCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String categoryId,
      EntryType type,
      int amount,
      DateTime localDate,
      DateTime occurredAt,
      String? note,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res> implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? type = null,
    Object? amount = null,
    Object? localDate = null,
    Object? occurredAt = null,
    Object? note = freezed,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      localDate: null == localDate
          ? _self.localDate
          : localDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurredAt: null == occurredAt
          ? _self.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Transaction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transaction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Transaction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String userId,
            String categoryId,
            EntryType type,
            int amount,
            DateTime localDate,
            DateTime occurredAt,
            String? note,
            DateTime updatedAt,
            DateTime? deletedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.categoryId,
            _that.type,
            _that.amount,
            _that.localDate,
            _that.occurredAt,
            _that.note,
            _that.updatedAt,
            _that.deletedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String userId,
            String categoryId,
            EntryType type,
            int amount,
            DateTime localDate,
            DateTime occurredAt,
            String? note,
            DateTime updatedAt,
            DateTime? deletedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction():
        return $default(
            _that.id,
            _that.userId,
            _that.categoryId,
            _that.type,
            _that.amount,
            _that.localDate,
            _that.occurredAt,
            _that.note,
            _that.updatedAt,
            _that.deletedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String userId,
            String categoryId,
            EntryType type,
            int amount,
            DateTime localDate,
            DateTime occurredAt,
            String? note,
            DateTime updatedAt,
            DateTime? deletedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Transaction() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.categoryId,
            _that.type,
            _that.amount,
            _that.localDate,
            _that.occurredAt,
            _that.note,
            _that.updatedAt,
            _that.deletedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Transaction implements Transaction {
  const _Transaction(
      {required this.id,
      required this.userId,
      required this.categoryId,
      required this.type,
      required this.amount,
      required this.localDate,
      required this.occurredAt,
      this.note,
      required this.updatedAt,
      this.deletedAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String categoryId;
  @override
  final EntryType type;
  @override
  final int amount;
  @override
  final DateTime localDate;
  @override
  final DateTime occurredAt;
  @override
  final String? note;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransactionCopyWith<_Transaction> get copyWith =>
      __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transaction &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.localDate, localDate) ||
                other.localDate == localDate) &&
            (identical(other.occurredAt, occurredAt) ||
                other.occurredAt == occurredAt) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, categoryId, type,
      amount, localDate, occurredAt, note, updatedAt, deletedAt);

  @override
  String toString() {
    return 'Transaction(id: $id, userId: $userId, categoryId: $categoryId, type: $type, amount: $amount, localDate: $localDate, occurredAt: $occurredAt, note: $note, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }
}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(
          _Transaction value, $Res Function(_Transaction) _then) =
      __$TransactionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String categoryId,
      EntryType type,
      int amount,
      DateTime localDate,
      DateTime occurredAt,
      String? note,
      DateTime updatedAt,
      DateTime? deletedAt});
}

/// @nodoc
class __$TransactionCopyWithImpl<$Res> implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = null,
    Object? type = null,
    Object? amount = null,
    Object? localDate = null,
    Object? occurredAt = null,
    Object? note = freezed,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
  }) {
    return _then(_Transaction(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as EntryType,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      localDate: null == localDate
          ? _self.localDate
          : localDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      occurredAt: null == occurredAt
          ? _self.occurredAt
          : occurredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _self.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _self.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$Goal {
  String get id;
  String get userId;
  String get name;
  int get targetAmount;
  int get initialAmount;
  DateTime get startDate;
  DateTime? get deadline;
  GoalMode get mode;
  int get monthlyLimit;
  GoalStatus get status;
  DateTime get updatedAt;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoalCopyWith<Goal> get copyWith =>
      _$GoalCopyWithImpl<Goal>(this as Goal, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Goal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.initialAmount, initialAmount) ||
                other.initialAmount == initialAmount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.monthlyLimit, monthlyLimit) ||
                other.monthlyLimit == monthlyLimit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      targetAmount,
      initialAmount,
      startDate,
      deadline,
      mode,
      monthlyLimit,
      status,
      updatedAt);

  @override
  String toString() {
    return 'Goal(id: $id, userId: $userId, name: $name, targetAmount: $targetAmount, initialAmount: $initialAmount, startDate: $startDate, deadline: $deadline, mode: $mode, monthlyLimit: $monthlyLimit, status: $status, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) _then) =
      _$GoalCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int targetAmount,
      int initialAmount,
      DateTime startDate,
      DateTime? deadline,
      GoalMode mode,
      int monthlyLimit,
      GoalStatus status,
      DateTime updatedAt});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res> implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._self, this._then);

  final Goal _self;
  final $Res Function(Goal) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? targetAmount = null,
    Object? initialAmount = null,
    Object? startDate = null,
    Object? deadline = freezed,
    Object? mode = null,
    Object? monthlyLimit = null,
    Object? status = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _self.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as int,
      initialAmount: null == initialAmount
          ? _self.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline: freezed == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GoalMode,
      monthlyLimit: null == monthlyLimit
          ? _self.monthlyLimit
          : monthlyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoalStatus,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [Goal].
extension GoalPatterns on Goal {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Goal value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Goal value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Goal value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String userId,
            String name,
            int targetAmount,
            int initialAmount,
            DateTime startDate,
            DateTime? deadline,
            GoalMode mode,
            int monthlyLimit,
            GoalStatus status,
            DateTime updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.name,
            _that.targetAmount,
            _that.initialAmount,
            _that.startDate,
            _that.deadline,
            _that.mode,
            _that.monthlyLimit,
            _that.status,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String userId,
            String name,
            int targetAmount,
            int initialAmount,
            DateTime startDate,
            DateTime? deadline,
            GoalMode mode,
            int monthlyLimit,
            GoalStatus status,
            DateTime updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal():
        return $default(
            _that.id,
            _that.userId,
            _that.name,
            _that.targetAmount,
            _that.initialAmount,
            _that.startDate,
            _that.deadline,
            _that.mode,
            _that.monthlyLimit,
            _that.status,
            _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String userId,
            String name,
            int targetAmount,
            int initialAmount,
            DateTime startDate,
            DateTime? deadline,
            GoalMode mode,
            int monthlyLimit,
            GoalStatus status,
            DateTime updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Goal() when $default != null:
        return $default(
            _that.id,
            _that.userId,
            _that.name,
            _that.targetAmount,
            _that.initialAmount,
            _that.startDate,
            _that.deadline,
            _that.mode,
            _that.monthlyLimit,
            _that.status,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Goal implements Goal {
  const _Goal(
      {required this.id,
      required this.userId,
      required this.name,
      required this.targetAmount,
      required this.initialAmount,
      required this.startDate,
      this.deadline,
      required this.mode,
      required this.monthlyLimit,
      required this.status,
      required this.updatedAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  @override
  final int targetAmount;
  @override
  final int initialAmount;
  @override
  final DateTime startDate;
  @override
  final DateTime? deadline;
  @override
  final GoalMode mode;
  @override
  final int monthlyLimit;
  @override
  final GoalStatus status;
  @override
  final DateTime updatedAt;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoalCopyWith<_Goal> get copyWith =>
      __$GoalCopyWithImpl<_Goal>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Goal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.initialAmount, initialAmount) ||
                other.initialAmount == initialAmount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.monthlyLimit, monthlyLimit) ||
                other.monthlyLimit == monthlyLimit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      name,
      targetAmount,
      initialAmount,
      startDate,
      deadline,
      mode,
      monthlyLimit,
      status,
      updatedAt);

  @override
  String toString() {
    return 'Goal(id: $id, userId: $userId, name: $name, targetAmount: $targetAmount, initialAmount: $initialAmount, startDate: $startDate, deadline: $deadline, mode: $mode, monthlyLimit: $monthlyLimit, status: $status, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$GoalCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$GoalCopyWith(_Goal value, $Res Function(_Goal) _then) =
      __$GoalCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      int targetAmount,
      int initialAmount,
      DateTime startDate,
      DateTime? deadline,
      GoalMode mode,
      int monthlyLimit,
      GoalStatus status,
      DateTime updatedAt});
}

/// @nodoc
class __$GoalCopyWithImpl<$Res> implements _$GoalCopyWith<$Res> {
  __$GoalCopyWithImpl(this._self, this._then);

  final _Goal _self;
  final $Res Function(_Goal) _then;

  /// Create a copy of Goal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? targetAmount = null,
    Object? initialAmount = null,
    Object? startDate = null,
    Object? deadline = freezed,
    Object? mode = null,
    Object? monthlyLimit = null,
    Object? status = null,
    Object? updatedAt = null,
  }) {
    return _then(_Goal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _self.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as int,
      initialAmount: null == initialAmount
          ? _self.initialAmount
          : initialAmount // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline: freezed == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      mode: null == mode
          ? _self.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GoalMode,
      monthlyLimit: null == monthlyLimit
          ? _self.monthlyLimit
          : monthlyLimit // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GoalStatus,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
mixin _$GoalSnapshot {
  String get goalId;
  DateTime get snapshotDate;
  int get accumulated;
  DateTime? get projectedDate;

  /// Create a copy of GoalSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoalSnapshotCopyWith<GoalSnapshot> get copyWith =>
      _$GoalSnapshotCopyWithImpl<GoalSnapshot>(
          this as GoalSnapshot, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoalSnapshot &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.snapshotDate, snapshotDate) ||
                other.snapshotDate == snapshotDate) &&
            (identical(other.accumulated, accumulated) ||
                other.accumulated == accumulated) &&
            (identical(other.projectedDate, projectedDate) ||
                other.projectedDate == projectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, goalId, snapshotDate, accumulated, projectedDate);

  @override
  String toString() {
    return 'GoalSnapshot(goalId: $goalId, snapshotDate: $snapshotDate, accumulated: $accumulated, projectedDate: $projectedDate)';
  }
}

/// @nodoc
abstract mixin class $GoalSnapshotCopyWith<$Res> {
  factory $GoalSnapshotCopyWith(
          GoalSnapshot value, $Res Function(GoalSnapshot) _then) =
      _$GoalSnapshotCopyWithImpl;
  @useResult
  $Res call(
      {String goalId,
      DateTime snapshotDate,
      int accumulated,
      DateTime? projectedDate});
}

/// @nodoc
class _$GoalSnapshotCopyWithImpl<$Res> implements $GoalSnapshotCopyWith<$Res> {
  _$GoalSnapshotCopyWithImpl(this._self, this._then);

  final GoalSnapshot _self;
  final $Res Function(GoalSnapshot) _then;

  /// Create a copy of GoalSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalId = null,
    Object? snapshotDate = null,
    Object? accumulated = null,
    Object? projectedDate = freezed,
  }) {
    return _then(_self.copyWith(
      goalId: null == goalId
          ? _self.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      snapshotDate: null == snapshotDate
          ? _self.snapshotDate
          : snapshotDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accumulated: null == accumulated
          ? _self.accumulated
          : accumulated // ignore: cast_nullable_to_non_nullable
              as int,
      projectedDate: freezed == projectedDate
          ? _self.projectedDate
          : projectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GoalSnapshot].
extension GoalSnapshotPatterns on GoalSnapshot {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GoalSnapshot value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GoalSnapshot value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GoalSnapshot value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String goalId, DateTime snapshotDate, int accumulated,
            DateTime? projectedDate)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot() when $default != null:
        return $default(_that.goalId, _that.snapshotDate, _that.accumulated,
            _that.projectedDate);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String goalId, DateTime snapshotDate, int accumulated,
            DateTime? projectedDate)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot():
        return $default(_that.goalId, _that.snapshotDate, _that.accumulated,
            _that.projectedDate);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String goalId, DateTime snapshotDate, int accumulated,
            DateTime? projectedDate)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalSnapshot() when $default != null:
        return $default(_that.goalId, _that.snapshotDate, _that.accumulated,
            _that.projectedDate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GoalSnapshot implements GoalSnapshot {
  const _GoalSnapshot(
      {required this.goalId,
      required this.snapshotDate,
      required this.accumulated,
      this.projectedDate});

  @override
  final String goalId;
  @override
  final DateTime snapshotDate;
  @override
  final int accumulated;
  @override
  final DateTime? projectedDate;

  /// Create a copy of GoalSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoalSnapshotCopyWith<_GoalSnapshot> get copyWith =>
      __$GoalSnapshotCopyWithImpl<_GoalSnapshot>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoalSnapshot &&
            (identical(other.goalId, goalId) || other.goalId == goalId) &&
            (identical(other.snapshotDate, snapshotDate) ||
                other.snapshotDate == snapshotDate) &&
            (identical(other.accumulated, accumulated) ||
                other.accumulated == accumulated) &&
            (identical(other.projectedDate, projectedDate) ||
                other.projectedDate == projectedDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, goalId, snapshotDate, accumulated, projectedDate);

  @override
  String toString() {
    return 'GoalSnapshot(goalId: $goalId, snapshotDate: $snapshotDate, accumulated: $accumulated, projectedDate: $projectedDate)';
  }
}

/// @nodoc
abstract mixin class _$GoalSnapshotCopyWith<$Res>
    implements $GoalSnapshotCopyWith<$Res> {
  factory _$GoalSnapshotCopyWith(
          _GoalSnapshot value, $Res Function(_GoalSnapshot) _then) =
      __$GoalSnapshotCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String goalId,
      DateTime snapshotDate,
      int accumulated,
      DateTime? projectedDate});
}

/// @nodoc
class __$GoalSnapshotCopyWithImpl<$Res>
    implements _$GoalSnapshotCopyWith<$Res> {
  __$GoalSnapshotCopyWithImpl(this._self, this._then);

  final _GoalSnapshot _self;
  final $Res Function(_GoalSnapshot) _then;

  /// Create a copy of GoalSnapshot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? goalId = null,
    Object? snapshotDate = null,
    Object? accumulated = null,
    Object? projectedDate = freezed,
  }) {
    return _then(_GoalSnapshot(
      goalId: null == goalId
          ? _self.goalId
          : goalId // ignore: cast_nullable_to_non_nullable
              as String,
      snapshotDate: null == snapshotDate
          ? _self.snapshotDate
          : snapshotDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accumulated: null == accumulated
          ? _self.accumulated
          : accumulated // ignore: cast_nullable_to_non_nullable
              as int,
      projectedDate: freezed == projectedDate
          ? _self.projectedDate
          : projectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
mixin _$Entitlement {
  String get id;
  String get userId;
  EntitlementPlan get plan;
  DateTime? get expiresAt;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EntitlementCopyWith<Entitlement> get copyWith =>
      _$EntitlementCopyWithImpl<Entitlement>(this as Entitlement, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Entitlement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, plan, expiresAt);

  @override
  String toString() {
    return 'Entitlement(id: $id, userId: $userId, plan: $plan, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class $EntitlementCopyWith<$Res> {
  factory $EntitlementCopyWith(
          Entitlement value, $Res Function(Entitlement) _then) =
      _$EntitlementCopyWithImpl;
  @useResult
  $Res call(
      {String id, String userId, EntitlementPlan plan, DateTime? expiresAt});
}

/// @nodoc
class _$EntitlementCopyWithImpl<$Res> implements $EntitlementCopyWith<$Res> {
  _$EntitlementCopyWithImpl(this._self, this._then);

  final Entitlement _self;
  final $Res Function(Entitlement) _then;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? plan = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as EntitlementPlan,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Entitlement].
extension EntitlementPatterns on Entitlement {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Entitlement value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Entitlement() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Entitlement value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Entitlement():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Entitlement value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Entitlement() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, String userId, EntitlementPlan plan,
            DateTime? expiresAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Entitlement() when $default != null:
        return $default(_that.id, _that.userId, _that.plan, _that.expiresAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id, String userId, EntitlementPlan plan, DateTime? expiresAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Entitlement():
        return $default(_that.id, _that.userId, _that.plan, _that.expiresAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, String userId, EntitlementPlan plan,
            DateTime? expiresAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Entitlement() when $default != null:
        return $default(_that.id, _that.userId, _that.plan, _that.expiresAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Entitlement implements Entitlement {
  const _Entitlement(
      {required this.id,
      required this.userId,
      required this.plan,
      this.expiresAt});

  @override
  final String id;
  @override
  final String userId;
  @override
  final EntitlementPlan plan;
  @override
  final DateTime? expiresAt;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EntitlementCopyWith<_Entitlement> get copyWith =>
      __$EntitlementCopyWithImpl<_Entitlement>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Entitlement &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, plan, expiresAt);

  @override
  String toString() {
    return 'Entitlement(id: $id, userId: $userId, plan: $plan, expiresAt: $expiresAt)';
  }
}

/// @nodoc
abstract mixin class _$EntitlementCopyWith<$Res>
    implements $EntitlementCopyWith<$Res> {
  factory _$EntitlementCopyWith(
          _Entitlement value, $Res Function(_Entitlement) _then) =
      __$EntitlementCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id, String userId, EntitlementPlan plan, DateTime? expiresAt});
}

/// @nodoc
class __$EntitlementCopyWithImpl<$Res> implements _$EntitlementCopyWith<$Res> {
  __$EntitlementCopyWithImpl(this._self, this._then);

  final _Entitlement _self;
  final $Res Function(_Entitlement) _then;

  /// Create a copy of Entitlement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? plan = null,
    Object? expiresAt = freezed,
  }) {
    return _then(_Entitlement(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _self.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as EntitlementPlan,
      expiresAt: freezed == expiresAt
          ? _self.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
