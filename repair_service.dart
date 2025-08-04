import 'Customer.dart';
import 'ServiceRequest.dart';
import 'Vechicle.dart';
import 'service_status_enum.dart';

class RepairService extends ServiceRequest {
  RepairService(String id, Customer customer, Vechicle vehicle)
    : super(id, customer, vehicle);

  @override
  void displayDetails() {
    String newStatusLabel = "Pendding";
    switch (status) {
      case ServiceStatus.PENDING:
        newStatusLabel = "Pendding";
      case ServiceStatus.INPROGRESS:
        newStatusLabel = "In Progress";
      case ServiceStatus.COMPLETED:
        newStatusLabel = "Completed";
      case ServiceStatus.CANCELED:
        newStatusLabel = "Canceled";
    }
    print("\n🛠 Repair Service [ID: $id] - Status: $newStatusLabel");
    customer.displayInfo();
    vehicle.displayVehicle();
    if (updatedAt != null) print("📝 Last update: $updatedAt");
  }

  @override
  void process() {
    setStatus(ServiceStatus.COMPLETED);
    print("✅ Repair completed for ${vehicle.plateNumber}");
  }
}
