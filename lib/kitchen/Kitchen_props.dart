class KitchenProps {
  final String name;
  final String amount;
  final String image;
  final String description;

  const KitchenProps({
    required this.name,
    required this.amount,
    required this.image,
    required this.description,
  });
}


final List<KitchenProps> kitchenList = [
  const KitchenProps(
    name: 'Tacos Nanchas',
    amount: '\$12.99',
    image: 'assets/images/plate1.png',
    description: 'Delicious tacos with fresh ingredients.',
  ),
  const KitchenProps(
    name: 'Mario Italiano',
    amount: '\$15.99',
    image: 'assets/images/plate2.png',
    description: 'Authentic Italian pasta dishes.',
  ),
  const KitchenProps(
    name: 'Burger House',
    amount: '\$10.99',
    image: 'assets/images/tea.png',
    description: 'Juicy burgers with crispy fries.',
  ),
  const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/tea1.png',
    description: 'Fresh sushi rolls and sashimi.',
  ),
   const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/tea2.png',
    description: 'Fresh sushi rolls and sashimi.',
  ),
   const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/teaplate1.png',
    description: 'Fresh sushi rolls and sashimi.',
  ),
];