class PartnerModel {
  final String image;
  final String title;
  final String subtitle;
  final String timeLabel;
  final String deliveryLabel;
  final String? rating;

  const PartnerModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.timeLabel,
    required this.deliveryLabel,
    this.rating,
  });
}