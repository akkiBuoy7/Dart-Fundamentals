void main(){

  var ac = ActualImpl();
  ac.getDetails();
  ac.modifyDetails();
  ac.modifyDetailsN();
}

class ActualImpl extends NormalClass with MixinClass{

  @override
  String get type => "MIXIN";

  @override
  String getDetails() {
    return super.getDetails();
  }

  /*
  Even though we have both mixin and normal class having same method
  The Mixin method will be given priority while overriding
   */
  @override
  void modifyDetails() {
    super.modifyDetails(); // here super is mixin
    print("Mixin class is always given priority while overriding");
  }


  @override
  String get type1 => "NormalClass";
  @override
  void modifyDetailsN() {
    super.modifyDetailsN();
  }

}

mixin MixinClass{

  String type = "";

  String getDetails() => type;

  void modifyDetails(){
    print("Mixin details modified by $type");
  }

}

class NormalClass{

  String type1 = "";

  String getDetails() => type1;

  void modifyDetails(){
    print("Normal details modified by $type1");
  }

  void modifyDetailsN(){
    print("details not modified by $type1");
  }
}