import 'Customer.dart';
import 'Vechicle.dart';
import 'service_status_enum.dart';

abstract class ServiceRequest {
  final String id;
  final Customer customer;
  final Vechicle vehicle;

  ServiceStatus status = ServiceStatus.PENDING;

  ServiceRequest(this.id, this.customer, this.vehicle);

  void displayDetails();
  void process();

  void setStatus(ServiceStatus newStatus) {
    status = newStatus;
    // update the status with the date time
    //notify customers for new updated status
  }
}
