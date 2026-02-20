class PartnerProps {
  final String image;
  final String title;
  final String subtitle;
  final String timeLabel;
  final String deliveryLabel;
  final String? rating;

  const PartnerProps({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.timeLabel,
    required this.deliveryLabel,
    this.rating,
  });
}

final List<PartnerProps> partnersList = [
  const PartnerProps(
    image: 'assets/images/plate1.png',
    title: 'Tacos Nanchas',
    subtitle: 'Tacos & Mexican',
    timeLabel: '20 min',
    deliveryLabel: 'Free',
  ),
  const PartnerProps(
    image: 'assets/images/plate2.png',
    title: 'Mario Italiano',
    subtitle: 'Italian & Pasta',
    timeLabel: '15 min',
    deliveryLabel: 'Pay',
    rating: '4.8',
  ),
  const PartnerProps(
    image: 'assets/images/tea.png',
    title: 'Burger House',
    subtitle: 'Burgers & Fries',
    timeLabel: '10 min',
    deliveryLabel: 'Free',
    rating: '4.5',
  ),
  const PartnerProps(
    image: 'assets/images/tea1.png',
    title: 'Sushi Zen',
    subtitle: 'Japanese & Sushi',
    timeLabel: '25 min',
    deliveryLabel: 'Pay',
    rating: '4.9',
  ),
   const PartnerProps(
    image: 'assets/images/tea2.png',
    title: 'Sushi Zen',
    subtitle: 'Japanese & Sushi',
    timeLabel: '25 min',
    deliveryLabel: 'Pay',
    rating: '4.9',
  ),
   const PartnerProps(
    image: 'assets/images/teaplate1.png',
    title: 'Sushi Zen',
    subtitle: 'Japanese & Sushi',
    timeLabel: '25 min',
    deliveryLabel: 'Pay',
    rating: '4.9',
  ),
   const PartnerProps(
    image: 'assets/images/tea1.png',
    title: 'Sushi Zen',
    subtitle: 'Japanese & Sushi',
    timeLabel: '25 min',
    deliveryLabel: 'Pay',
    rating: '4.9',
  ),
];