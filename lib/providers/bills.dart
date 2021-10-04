import 'package:flutter/cupertino.dart';
import '../models/teeth.dart';

import '../models/bill.dart';
import '../models/kow.dart';
import '../models/tcolor.dart';

class Bills with ChangeNotifier{
  List<Bill> _items=[
    Bill('b1',doctorId: 0,patient: 'somebody0',kow: KOW.Zr,teeth: Teeth.only(ul: '1234'),tcolor: TColor.B2,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b2',doctorId: 1,patient: 'somebody1',kow: KOW.Cer,teeth: Teeth.only(ul: '1234',ur: '123'),tcolor: TColor.A2,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b3',doctorId: 0,patient: 'somebody2',kow: KOW.Cer,teeth: Teeth.only(dl: '1'),tcolor: TColor.A3,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b4',doctorId: 1,patient: 'somebody3',kow: KOW.Cer,teeth: Teeth.only(ul: '6'),tcolor: TColor.A1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b5',doctorId: 2,patient: 'somebody4',kow: KOW.Zr,teeth: Teeth.only(dr: '56'),tcolor: TColor.A35,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b6',doctorId: 2,patient: 'somebody5',kow: KOW.Cer,teeth: Teeth.only(ur: '345'),tcolor: TColor.B1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b7',doctorId: 2,patient: 'somebody6',kow: KOW.Cer,teeth: Teeth.only(ul: '5'),tcolor: TColor.C3,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b8',doctorId: 0,patient: 'somebody7',kow: KOW.Cer,teeth: Teeth.only(ur: '34',dr: '34'),tcolor: TColor.A1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b9',doctorId: 0,patient: 'somebody8',kow: KOW.Cer,teeth: Teeth.only(ur: '234'),tcolor: TColor.B3,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b10',doctorId: 3,patient: 'somebody9',kow: KOW.Zr,teeth: Teeth.full(),tcolor: TColor.A3,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b11',doctorId: 4,patient: 'somebody10',kow: KOW.Cer,teeth: Teeth.only(dr: '234'),tcolor: TColor.A1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b12',doctorId: 2,patient: 'somebody11',kow: KOW.Cer,teeth: Teeth.only(dl: '12345'),tcolor: TColor.C1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b13',doctorId: 1,patient: 'somebody12',kow: KOW.Cer,teeth: Teeth.only(ur: '1234',ul: '123'),tcolor: TColor.A35,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
  ];

  get items{
    return [..._items];
  }

  addBill(Bill bill){
    _items.add(bill);
    notifyListeners();
  }

  removeBill(Bill bill){
    _items.remove(bill);
    notifyListeners();
  }
}