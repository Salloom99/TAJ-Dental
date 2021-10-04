import 'package:flutter/cupertino.dart';
import '../models/teeth.dart';

import '../models/bill.dart';
import '../models/kow.dart';
import '../models/tcolor.dart';

class RequestedBills with ChangeNotifier{
  List<Bill> _items=[
    Bill('b1',doctorId: 0,patient: 'somebody0',kow: KOW.Zr,teeth: Teeth.only(ul: '1234'),tcolor: TColor.B2,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b3',doctorId: 0,patient: 'somebody2',kow: KOW.Cer,teeth: Teeth.only(dl: '1'),tcolor: TColor.A3,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b6',doctorId: 2,patient: 'somebody5',kow: KOW.Cer,teeth: Teeth.only(ur: '345'),tcolor: TColor.B1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b8',doctorId: 0,patient: 'somebody7',kow: KOW.Cer,teeth: Teeth.only(ur: '34',dr: '34'),tcolor: TColor.A1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
    Bill('b11',doctorId: 4,patient: 'somebody10',kow: KOW.Cer,teeth: Teeth.only(dr: '234'),tcolor: TColor.A1,delivery: DateTime.now(),receive: DateTime.now(),notes: ''),
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

  removeBillAt(int index){
    _items.removeAt(index);
    notifyListeners();
  }
}