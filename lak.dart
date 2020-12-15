import 'dart:io';

void main() {
   var m, baht, lak;
   double baht_to_lak = 307.76;
   print("Select menu \n1.สกุลเงินกีบลาวแปลงเป็นเงินบาทไทย \n2.สกุลเงินบาทไทยแปลงเป็นเงินกีบลาว");
   m = stdin.readLineSync();
   var menu = int.parse(m);
   assert(menu == m);
   if(menu == 1){
     print("ป้อนสกุลเงินบาทไทย:");
     baht = stdin.readLineSync();
     var bahtdouble = double.parse(baht);
     assert(bahtdouble == baht);
     double ans_lak;
     ans_lak = bahtdouble * baht_to_lak;
     print("สกุลเงินบาทไทยจำนวน $bahtdouble บาท สามารถเเลกเป็นสกุลเงินกีบลาวได้ $ans_lak กีบ");
   }else if(menu == 2){
     print("ป้อนสกุลเงินกีบลาว:");
     lak = stdin.readLineSync();
     var lakdouble = double.parse(lak);
     assert(lakdouble == lak);
     double ans_baht;
     ans_baht = lakdouble / baht_to_lak;
     print("สกุลเงินกีบลาวจำนวน $lakdouble กีบ สามารถเเลกเป็นสกุลเงินบาทไทยได้ $ans_baht บาท");
   }else{
     print("ป้อนตัวเลขไม่อยู่ในเงื่อนไข");
   }
  
   
}