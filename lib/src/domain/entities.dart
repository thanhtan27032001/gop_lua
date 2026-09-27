import 'package:freezed_annotation/freezed_annotation.dart';

part 'entities.freezed.dart';

enum EntryType { income, expense }

enum GoalMode { a, b }

enum GoalStatus { active, paused, done, canceled }

enum EntitlementPlan { free, pro }

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(
      {required String id,
      required String email,
      required int monthlyIncome,
      required int initialBalance,
      required int startDay,
      required String timezone,
      required DateTime createdAt}) = _UserProfile;
}

@freezed
abstract class Category with _$Category {
  const factory Category(
      {required String id,
      required String userId,
      required String name,
      required EntryType type,
      required String iconColor,
      required bool isHidden,
      required bool isDefault}) = _Category;
}

@freezed
abstract class Transaction with _$Transaction {
  const factory Transaction(
      {required String id,
      required String userId,
      required String categoryId,
      required EntryType type,
      required int amount,
      required DateTime localDate,
      required DateTime occurredAt,
      String? note,
      required DateTime updatedAt,
      DateTime? deletedAt}) = _Transaction;
}

@freezed
abstract class Goal with _$Goal {
  const factory Goal(
      {required String id,
      required String userId,
      required String name,
      required int targetAmount,
      required int initialAmount,
      required DateTime startDate,
      DateTime? deadline,
      required GoalMode mode,
      required int monthlyLimit,
      required GoalStatus status,
      required DateTime updatedAt}) = _Goal;
}

@freezed
abstract class GoalSnapshot with _$GoalSnapshot {
  const factory GoalSnapshot(
      {required String goalId,
      required DateTime snapshotDate,
      required int accumulated,
      DateTime? projectedDate}) = _GoalSnapshot;
}

@freezed
abstract class Entitlement with _$Entitlement {
  const factory Entitlement(
      {required String id,
      required String userId,
      required EntitlementPlan plan,
      DateTime? expiresAt}) = _Entitlement;
}
