void main(){
  final jumNum = JumpingNum();

  jumNum.func();

}

mixin Jump{
  int jumping = 10;
}

class JumpingNum with Jump{
  void func(){
    print('jumping number $jumping');
  }
}