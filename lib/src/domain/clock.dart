abstract interface class DomainClock {
  DateTime get nowUtc;
  DateTime localDate(String timezone);
}

class FixedClock implements DomainClock {
  const FixedClock(this.nowUtc, {this.offset = const Duration()});
  @override final DateTime nowUtc;
  final Duration offset;
  @override DateTime localDate(String timezone) {
    final local = nowUtc.toUtc().add(offset);
    return DateTime(local.year, local.month, local.day);
  }
}
