int calculateAge(DateTime birthDate) {
  DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  if (birthDate.month > currentDate.month) {
    age--;
  } else if (birthDate.month == currentDate.month) {
    if (birthDate.day > currentDate.day) {
      age--;
    }
  }
  return age;
}
