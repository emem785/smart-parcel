class ValidatorUtil {
  static String? Function(String?)? get normalValidator => (value) {
        return value!.isEmpty ? "This field cannot be left blank" : null;
      };
  static String? Function(String?)? get emailValidator => (value) {
        if (value!.contains("@") && value.isNotEmpty && value.contains(".")) {
          return null;
        }
        return "Please Enter a valid Email";
      };
  static String? Function(String?)? get otpValidator => (value) {
        if (value!.isEmpty) {
          return "This field cannot be left blank";
        } else if (value.length < 6) {
          return "Otp cannot be less than 6 digits";
        }
        return null;
      };
}
