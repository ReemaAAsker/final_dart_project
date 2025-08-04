import 'Customer.dart';
import 'Notifiable_inf.dart';
import 'Trackable_mix.dart';
import 'Vechicle.dart';
import 'service_status_enum.dart';

abstract class ServiceRequest with Trackable implements Notifable {
  final String id;
  final Customer customer;
  final Vechicle vehicle;

  ServiceStatus status = ServiceStatus.PENDING;

  ServiceRequest(this.id, this.customer, this.vehicle);

  void displayDetails();
  void process();

  void setStatus(ServiceStatus newStatus) {
    status = newStatus;
    String newStatusLabel = "Pendding";
    switch (newStatus) {
      case ServiceStatus.PENDING:
        newStatusLabel = "Pendding";
      case ServiceStatus.INPROGRESS:
        newStatusLabel = "In Progress";
      case ServiceStatus.COMPLETED:
        newStatusLabel = "Completed";
      case ServiceStatus.CANCELED:
        newStatusLabel = "Canceled";
    }
    updateStatus(newStatusLabel);
    notifyCustomer("Your request [$id] status changed to: ${newStatusLabel}");
  }

  @override
  void notifyCustomer(String message) {
    print("Notification to ${customer.name}: $message");
  }
}
