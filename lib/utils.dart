
extension SizeManager on double {
  double height52() {
    return switch (this) {
      <= 240 => 24,
      <= 320 => 36,
      <= 360 => 42,
      <= 400 => 48,
      _ => 52
    };
  }

  double width8(int from8) {
    assert(from8 >= 0 || from8 < 8,
    "\nerror : you set $from8 from range (1~8) !\n");
    return switch (from8) {
      1 => (this / 100 * 12.5) * 1,
      2 => (this / 100 * 12.5) * 2,
      3 => (this / 100 * 12.5) * 3,
      4 => (this / 100 * 12.5) * 4,
      5 => (this / 100 * 12.5) * 5,
      6 => (this / 100 * 12.5) * 6,
      7 => (this / 100 * 12.5) * 7,
      _ => (this / 100 * 12.5) * 8,
    };
  }
}
