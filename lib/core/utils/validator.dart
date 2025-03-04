class FormValidator {
  static String? validateEmail(String? value) {
    if(value == null || value.isEmpty) {
      return 'Email is required';
    }
    if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
      return 'Please enter a valid email';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty){
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  static String? validateFullName(String? value) {
    if (value == null || value.isEmpty){
      return 'Fullname is required';
    }
    if (value.length < 3) {
      return 'Full Name must be at least 3 characters';
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String password) {
    if (value == null || value.isEmpty){
      return 'ConfirmPassword is required';
    }
    if (value != password) {
      return 'Password do not match';
    }
    return null;
  }
}