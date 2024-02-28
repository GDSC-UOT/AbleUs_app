class Service {
  String serviceType = "";
  String serviceTitle = "";
  late DateTime postTime;
  late String description;
  late String details;
  late String ownedBy;
  late int rating;
  late String image;

  Service() {
    postTime = DateTime.now();
  }
}
