class FinancialPeriod {
  const FinancialPeriod({required this.start, required this.end});
  final DateTime start, end;
  bool contains(DateTime date) => !date.isBefore(start) && !date.isAfter(end);
  static FinancialPeriod forDate(DateTime date, int startDay) {
    final day = _daysInMonth(date.year, date.month);
    final thisStart = DateTime(date.year, date.month, startDay.clamp(1, day));
    final start = date.day >= thisStart.day
        ? thisStart
        : _startOfPrevious(date, startDay);
    final next = _startOfNext(start, startDay);
    return FinancialPeriod(
        start: start, end: next.subtract(const Duration(days: 1)));
  }

  static DateTime _startOfPrevious(DateTime d, int n) {
    final y = d.month == 1 ? d.year - 1 : d.year;
    final m = d.month == 1 ? 12 : d.month - 1;
    return DateTime(y, m, n.clamp(1, _daysInMonth(y, m)));
  }

  static DateTime _startOfNext(DateTime d, int n) {
    final y = d.month == 12 ? d.year + 1 : d.year;
    final m = d.month == 12 ? 1 : d.month + 1;
    return DateTime(y, m, n.clamp(1, _daysInMonth(y, m)));
  }

  static int _daysInMonth(int y, int m) => DateTime(y, m + 1, 0).day;
  static DateTime monday(DateTime date) {
    final d = DateTime(date.year, date.month, date.day);
    return d.subtract(Duration(days: d.weekday - 1));
  }
}
