class AppRegex{
  static final RegExp email = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

  static final RegExp strongpassword = RegExp(r'^(?=.*[A-Za-z](?=.*\d)[A-Za-z\d]{8,}$');

  static final RegExp phoneNumber = RegExp(r'^\d{10}$');


  static final RegExp name = RegExp(r'^[a-zAa-Z\s\-]+$');
}

String? validateEmail(String? value){
  if (value == null || value.isEmpty){
    return 'يرجى ادخال الايميل الخاص بك';
  }
  if (!AppRegex.email.hasMatch(value)){
    return 'يرجى ادخال الايميل الصحيح';
  }
  return null;

}
String? validatePassword(String? value){
  if (value == null || value.isEmpty){

    return 'يرجى ادخال كلمة السر';
  }
  return null;


}