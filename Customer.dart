class Customer {
  String? name;
  String? phone;

  Customer({this.name, this.phone});

  void displayInfo() {
    print('Name: $name  | Phone: $phone');
  }
}
