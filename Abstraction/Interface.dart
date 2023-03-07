/*
# No special syntax for interface. A class can be used as interface.
# Need to use implements keyword for implementing a class as interface
# Can implement multiple class but can not extend multiple class
# Can not call super() when implementing a class.
 */

void main(){

  var a = Adapter();

  a.onViewClick();
  a.onViewLongClick();
  a.details();
}

class Adapter extends BaseAdapter implements OnClick,OnLongClick{

  @override
  void details(){
    super.details(); // This is possible as BaseAdapter class has been extended
    print("This is Adapter class");
  }

  @override
  void onViewClick() {
    // super().onViewClick(); This is not possible as onClick is implemented
    print("-------View Clicked from Adapter");
  }

  @override
  void onViewLongClick() {
    //This is not possible as onLongClick is implemented as interface
    // super().onLongViewClick();
    print("-------View Long Clicked from Adapter");
  }
}

class BaseAdapter{
  void details(){
    print("This is Base Adapter class");
  }
}

class OnClick{

  void onViewClick(){
    print("-------View Clicked");
  }
}

class OnLongClick{

  void onViewLongClick(){
    print("-------View Long Clicked");
  }
}