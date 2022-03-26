extension Validation on String {
  static final RegExp _emailPattern = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  bool get isValidEmail => _emailPattern.hasMatch(toLowerCase());
}
