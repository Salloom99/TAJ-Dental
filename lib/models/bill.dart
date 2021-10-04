import '../models/teeth.dart';

import 'kow.dart';
import 'tcolor.dart';

class Bill {
  final String id;
  final int doctorId;
  final String patient;
  final KOW kow;
  final Teeth teeth;
  final DateTime receive;
  final DateTime delivery;
  final TColor tcolor;
  final String notes;

  Bill(this.id,
      {required this.doctorId,
        required this.patient,
        required this.kow,
        required this.teeth,
        required this.receive,
        required this.delivery,
        required this.tcolor,
        required this.notes});

  @override
  String toString() {
    return 'bill';
  }
}
