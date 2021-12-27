class PhoneValidateUtil {
  static String validatePhoneNumber(String value) {
    final phone = matchFilter(value);
    return "+234" + phone;
  }

  static String matchFilter(String value) {
    RegExp regex = RegExp(r'^(0)(\d{10})');
    if (regex.hasMatch(value)) {
      return regex.firstMatch(value)!.group(2)!;
    }
    return value;
  }
}
