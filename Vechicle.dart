class Vechicle {
  String plateNumber;
  String model;
  String brand;

  Vechicle(this.plateNumber, this.model, this.brand);
  void displayVehicle() {
    print(" Vehicle: $brand $model | Plate: $plateNumber");
  }
}
