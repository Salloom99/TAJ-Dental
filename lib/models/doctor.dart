class Doctor {
  final int id;
  final String firstName;
  final String lastName;

  const Doctor(this.id,this.firstName, this.lastName);

  @override
  String toString() {
    return '$firstName $lastName';
  }
}