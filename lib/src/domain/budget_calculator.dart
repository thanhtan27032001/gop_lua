sealed class BudgetResult {
  const BudgetResult();
}

class BudgetFeasible extends BudgetResult {
  const BudgetFeasible({required this.value});
  final BudgetValue value;
}

class BudgetInfeasible extends BudgetResult {
  const BudgetInfeasible(this.reason);
  final String reason;
}

class BudgetNotEstimable extends BudgetResult {
  const BudgetNotEstimable(this.reason);
  final String reason;
}

class BudgetValue {
  const BudgetValue(
      {required this.monthlySaving,
      required this.monthlyLimit,
      required this.days,
      required this.finish});
  final int monthlySaving, monthlyLimit, days;
  final DateTime? finish;
}

class Forecast {
  const Forecast(
      {required this.projectedExpense,
      required this.averageExpense,
      required this.projectedSaving,
      required this.endSaving,
      required this.days,
      required this.finish,
      required this.preliminary});
  final int projectedExpense, averageExpense, projectedSaving, endSaving, days;
  final DateTime? finish;
  final bool preliminary;
}

class Balance {
  const Balance(this.value);
  final int value;
}

class Accumulated {
  const Accumulated(this.value, {required this.warning});
  final int value;
  final bool warning;
}

class BudgetCalculator {
  const BudgetCalculator({this.k = 30.4375});
  final double k;
  static int ceil1000(num x) => ((x / 1000).ceil() * 1000).toInt();
  static int floor1000(num x) => ((x / 1000).floor() * 1000).toInt();
  BudgetResult modeA(
      {required int target,
      required int saved,
      required int income,
      required int daysToDeadline}) {
    if (daysToDeadline < 30)
      return const BudgetInfeasible(
          'deadline phải sau hôm nay ít nhất 30 ngày');
    final n = daysToDeadline / k;
    final r = ceil1000((target - saved) / n);
    final l = floor1000(income - r);
    if (l <= 0) return const BudgetInfeasible('Mục tiêu không khả thi');
    return BudgetFeasible(
        value: BudgetValue(
            monthlySaving: r,
            monthlyLimit: l,
            days: daysToDeadline,
            finish: null));
  }

  BudgetResult modeB(
      {required int target,
      required int saved,
      required int income,
      required int monthlyLimit,
      required DateTime today}) {
    final sd = income - monthlyLimit;
    if (sd <= 0) return const BudgetInfeasible('Mục tiêu không khả thi');
    final days = ((target - saved) * k / sd).ceil();
    return BudgetFeasible(
        value: BudgetValue(
            monthlySaving: sd,
            monthlyLimit: monthlyLimit,
            days: days,
            finish: DateTime(today.year, today.month, today.day + days)));
  }

  int rollingDailyLimit(
          {required int monthlyLimit,
          required int previousSpend,
          required int daysRemaining}) =>
      daysRemaining <= 0
          ? 0
          : floor1000((monthlyLimit - previousSpend).clamp(0, monthlyLimit) /
              daysRemaining);
  Forecast forecast(
      {required int saved,
      required int target,
      required int income,
      required int currentSpend,
      required int elapsedDays,
      required int periodDays,
      required int incomeRecorded,
      required int fullMonthAverage,
      required int fullMonths,
      required int userLimit,
      required DateTime periodEnd}) {
    final proj = elapsedDays <= 0
        ? 0
        : (currentSpend / elapsedDays * periodDays).round();
    final preliminary = fullMonths == 0 && elapsedDays < 7;
    final avg = fullMonths == 0 ? userLimit : fullMonthAverage;
    final ehat = fullMonths == 0
        ? (preliminary ? userLimit : proj)
        : (0.6 * avg + 0.4 * proj).round();
    final ps = income - ehat;
    if (ps <= 0)
      return Forecast(
          projectedExpense: proj,
          averageExpense: avg,
          projectedSaving: ps,
          endSaving: saved,
          days: 0,
          finish: null,
          preliminary: preliminary);
    final end = saved -
        (ehat - currentSpend) +
        (income - incomeRecorded).clamp(0, income);
    final days = ((target - end) * k / ps).ceil().clamp(0, 1 << 31);
    return Forecast(
        projectedExpense: proj,
        averageExpense: avg,
        projectedSaving: ps,
        endSaving: end,
        days: days,
        finish: DateTime(periodEnd.year, periodEnd.month, periodEnd.day + days),
        preliminary: preliminary);
  }

  int? expenseImpact(
      {required int amount,
      required int projectedSaving,
      int threshold = 100000}) {
    if (amount < threshold || projectedSaving <= 0) return null;
    final result = (amount * k / projectedSaving).round();
    return result < 1 ? 1 : result;
  }

  Balance balance(
          {required int initialBalance,
          required Iterable<int> income,
          required Iterable<int> expense}) =>
      Balance(initialBalance +
          initialBalance +
          income.fold<int>(0, (a, b) => a + b) -
          expense.fold<int>(0, (a, b) => a + b));
  Accumulated accumulated(
      {required int initialAmount,
      required Iterable<int> income,
      required Iterable<int> expense}) {
    final value = initialAmount +
        income.fold<int>(0, (a, b) => a + b) -
        expense.fold<int>(0, (a, b) => a + b);
    return Accumulated(value, warning: value < 0);
  }
}
