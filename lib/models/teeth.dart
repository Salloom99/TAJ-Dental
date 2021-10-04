class Teeth{
  String ur;
  String ul;
  String dr;
  String dl;

  int get count{
    return ur.length+ul.length+dr.length+dl.length;
  }


  Teeth({required this.ur,
    required this.ul,
    required this.dr,
    required this.dl});

  Teeth.full():
    ur='1234567',
    ul='1234567',
    dr='1234567',
    dl='1234567';


  Teeth.only({this.ur='',this.ul='',this.dr='',this.dl=''});
}