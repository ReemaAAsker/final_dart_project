mixin Trackable {
  DateTime? updatedAt;

  void updateStatus(String statusLabel) {
    updatedAt = DateTime.now();
    print("Status changed to [$statusLabel] at $updatedAt");
  }
}
