import 'Customer.dart';
import 'ServiceRequest.dart';
import 'Vechicle.dart';
import 'inspection_service.dart';
import 'periodic_service.dart';
import 'repair_service.dart';
import 'service_status_enum.dart';

void main() {
  // Ahmed Comment

  List<ServiceRequest> requests = [];

  // Test Case 1: Periodic Service
  var c1 = Customer(name: "Omar", phone: "0599111122");
  var v1 = Vechicle(plateNumber: "XYZ123", model: "Civic", brand: "Honda");
  var s1 = PeriodicService("REQ001", c1, v1);
  requests.add(s1);

  // Test Case 2: Repair Service
  var c2 = Customer(name: "Aya", phone: "0599222233");
  var v2 = Vechicle(plateNumber: "ABC789", model: "Corolla", brand: "Toyota");
  var s2 = RepairService("REQ002", c2, v2);
  requests.add(s2);

  // Test Case 3: Inspection Service
  var c3 = Customer(name: "Fadi", phone: "0599333344");
  var v3 = Vechicle(plateNumber: "DEF456", model: "Model 3", brand: "Tesla");
  var s3 = InspectionService("REQ003", c3, v3);
  requests.add(s3);

  // Display and process all
  for (var req in requests) {
    req.displayDetails();
    req.process();
  }

  // Simulate changing status manually (testing InProgress)
  print("\n--- Manual Status Change Test ---");
  s1.setStatus(ServiceStatus.INPROGRESS);
  s2.setStatus(ServiceStatus.CANCELED);
  s3.setStatus(ServiceStatus.COMPLETED);
}
