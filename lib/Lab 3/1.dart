import 'dart:ffi';
import 'dart:io';
class candidate{
 int? candidateid,candidateage;
 String? candidatename;
 double? candidateweight,candidateheight;

 void getdetails(){
    print("Enter Candidate Id,Name,Age,Weight,Height : ");
    candidateid = int.parse(stdin.readLineSync()!);
    candidatename = stdin.readLineSync()!;
    candidateage = int.parse(stdin.readLineSync()!);
    candidateweight = double.parse(stdin.readLineSync()!);
    candidateheight = double.parse(stdin.readLineSync()!);
 }
 void Displaydetails(){
    print("$candidateid,$candidatename,$candidateage,$candidateweight,$candidateheight");
 }
}
void main(){
    candidate c = new candidate();
    c.getdetails();
    c.Displaydetails();
}