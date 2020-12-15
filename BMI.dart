import 'dart:io';

void main() {

var height, weight ;
print("\n input height(cm.):");
height = stdin.readLineSync();
print("\n input weight(kg.):");
weight = stdin.readLineSync();
var heightdouble = double.parse(height);
assert(heightdouble == height);
//print(heightdouble);
var weightdouble = double.parse(weight);
assert(weightdouble == weight);
//print(weightdouble);
double heightdoublem;
heightdoublem = heightdouble/100;
//print(heightdoublem );
double bmi;
bmi = weightdouble /(heightdoublem*heightdoublem);
//print(bmi);
String bmistr = bmi.toStringAsFixed(2);
assert(bmistr == bmi);
print("BMI = $bmistr");
if (double.parse(bmistr) < 18.50){
  print("ค่า BMI = $bmistr ซึ่งอยู่ในเกณฑ์น้ำหนักน้อย ภาวะเสี่ยงต่อโรคมากกว่าคนปกติ");

}else if (double.parse(bmistr) >= 18.50 && double.parse(bmistr) <= 22.90){
  print("ค่า BMI = $bmistr ซึ่งอยู่ในเกณฑ์ปกติ ภาวะเสี่ยงต่อโรคเท่าคนปกติ");

}else if (double.parse(bmistr) >= 23 && double.parse(bmistr) <= 24.90){
  print("ค่า BMI = $bmistr ซึ่งอยู่ในเกณฑ์ท้วม ภาวะเสี่ยงต่อโรคอันตรายระดับ1");

}else if (double.parse(bmistr) >= 25 && double.parse(bmistr) <= 29.90){
  print("ค่า BMI = $bmistr ซึ่งอยู่ในเกณฑ์อ้วน ภาวะเสี่ยงต่อโรคอันตรายระดับ2");

}else{
  print("ค่า BMI = $bmistr ซึ่งอยู่ในเกณฑ์อ้วนมาก ภาวะเสี่ยงต่อโรคอันตรายระดับ3");
}
}