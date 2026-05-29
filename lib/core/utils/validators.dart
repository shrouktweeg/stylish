class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$").hasMatch(value)) {
      return "Please enter a valid email address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    final passwordRegExp = RegExp(r'^[a-zA-Z0-9]{8,}$');

    if (!passwordRegExp.hasMatch(value)) {
      return "Password must be at least 8 characters and contain only letters and numbers";
    }

    return null;
  }}