class CodeNestValidators {
  /// ✅ Email Validator
  static String? email(
    String? value, {
    String errorMsg = 'Enter a valid email',
  }) {
    if (value == null || value.isEmpty) return 'Email is required';
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(value) ? null : errorMsg;
  }

  /// 🔒 Password Validator with minLength, special char, etc.
  static String? password(
    String? value, {
    int minLength = 6,
    bool requireSpecialChar = true,
    String errorMsg = 'Enter a valid password',
  }) {
    if (value == null || value.isEmpty) return 'Password is required';
    if (value.length < minLength) {
      return 'Password must be at least $minLength characters';
    }
    if (requireSpecialChar &&
        !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }
    return null;
  }

  /// 🧍 Username Validator
  static String? username(
    String? value, {
    String errorMsg = 'Enter a valid username',
  }) {
    if (value == null || value.trim().isEmpty) return 'Username is required';
    if (value.trim().length < 3) {
      return 'Username must be at least 3 characters';
    }
    return null;
  }

  /// 📅 Date Validator (yyyy-mm-dd)
  static String? date(
    String? value, {
    String errorMsg = 'Enter a valid date (yyyy-mm-dd)',
  }) {
    if (value == null || value.isEmpty) return 'Date is required';
    final regex = RegExp(r'^\d{4}-\d{2}-\d{2}$');
    return regex.hasMatch(value) ? null : errorMsg;
  }

  /// ⏰ Time Validator (HH:mm)
  static String? time(
    String? value, {
    String errorMsg = 'Enter a valid time (HH:mm)',
  }) {
    if (value == null || value.isEmpty) return 'Time is required';
    final regex = RegExp(r'^(?:[01]\d|2[0-3]):[0-5]\d$');
    return regex.hasMatch(value) ? null : errorMsg;
  }

  /// 🎂 Age Validator (must be number and within range)
  static String? age(
    String? value, {
    int min = 1,
    int max = 120,
    String? errorMsg,
  }) {
    if (value == null || value.isEmpty) return 'Age is required';
    final age = int.tryParse(value);
    if (age == null) return 'Age must be a number';
    if (age < min || age > max) {
      return errorMsg ?? 'Age must be between $min and $max';
    }
    return null;
  }

  /// 🆓 Non-empty field validator
  static String? required(String? value, {String fieldName = 'This field'}) {
    return value == null || value.trim().isEmpty
        ? '$fieldName is required'
        : null;
  }

  /// 2️⃣ Number validator
  static String? number(
    String? value, {
    String errorMsg = 'Enter a valid number',
  }) {
    if (value == null || value.trim().isEmpty) return 'This field is required';
    return double.tryParse(value) != null ? null : errorMsg;
  }

  /// 📞Phone Number Validator (IN)
  static String? phone(
    String? value, {
    String errorMsg = 'Enter a valid phone number',
  }) {
    if (value == null || value.trim().isEmpty) {
      return 'Phone number is required';
    }
    return RegExp(r'^\d{10}$').hasMatch(value) ? null : errorMsg;
  }

  /// 3️⃣ OTP PIN Number Validator
  static String? pin(String? value, {int length = 6, String? errorMsg}) {
    if (value == null || value.isEmpty) return 'PIN is required';
    final regex = RegExp(r'^\d{' + length.toString() + r'}$');
    return regex.hasMatch(value)
        ? null
        : errorMsg ?? 'Enter a $length-digit PIN';
  }

  /// 🌎Url Validator
  static String? url(String? value, {String errorMsg = 'Enter a valid URL'}) {
    if (value == null || value.trim().isEmpty) return 'URL is required';
    return Uri.tryParse(value)?.hasAbsolutePath == true ? null : errorMsg;
  }
}
