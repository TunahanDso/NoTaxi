class RideData {
  final String from;
  final String to;
  final bool isDriver;

  RideData({required this.from, required this.to, required this.isDriver});

  Map<String, dynamic> toJson() => {
        'from': from,
        'to': to,
        'isDriver': isDriver,
      };
}
