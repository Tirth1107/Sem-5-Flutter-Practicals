import 'dart:io';
class Animal {
  void animalsound(){
  }
}
class cat extends Animal {
  @override
  void animalsound(){
    print("Meow....Meow");
  }
}
class dog extends Animal {
  @override
  void animalsound(){
    print("Akshit...Akshit");
  }
}
void main(){
  cat().animalsound();
  dog().animalsound();
}