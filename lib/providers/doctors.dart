import '../models/doctor.dart';

class Doctors{
  List<Doctor> _items =[
    Doctor(0, 'Hasan', 'Mousa'),
    Doctor(1, 'Yousef', 'Al-Er'),
    Doctor(2, 'Abd Al-Kareem', 'Mohammad'),
    Doctor(3, 'Mokarram', 'Kabalan'),
    Doctor(4, 'Mohammad', 'Kazhali'),
  ];

  get items{
    return[..._items];
  }
  addDoctor(Doctor doctor){
    _items.add(doctor);
  }
}