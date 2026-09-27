import 'entities.dart';

class GoalStateMachine {
  const GoalStateMachine();
  GoalStatus autoComplete(GoalStatus status, int accumulated, int target) =>
      status == GoalStatus.active && accumulated >= target
          ? GoalStatus.done
          : status;
  GoalStatus transition(GoalStatus current, GoalStatus next) {
    if (current == GoalStatus.done || current == GoalStatus.canceled)
      throw StateError('Mục tiêu đã kết thúc');
    if (next == GoalStatus.paused && current == GoalStatus.active) return next;
    if (next == GoalStatus.active && current == GoalStatus.paused) return next;
    if (next == GoalStatus.canceled) return next;
    if (next == GoalStatus.done && current == GoalStatus.active) return next;
    throw StateError('Chuyển trạng thái không hợp lệ');
  }
}
