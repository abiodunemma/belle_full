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
    image: 'assets/images/beans.png',
    description: 'Delicious ',
  ),
  const KitchenProps(
    name: 'Mario Italiano',
    amount: '\$15.99',
    image: 'assets/images/beans1.png',
    description: 'Italian ',
  ),
  const KitchenProps(
    name: 'Burger House',
    amount: '\$10.99',
    image: 'assets/images/beans2.png',
    description: 'Juicy .',
  ),
  const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/tea1.png',
    description: 'Fresh ',
  ),
   const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/tea2.png',
    description: 'Fresh.',
  ),
   const KitchenProps(
    name: 'Sushi Zen',
    amount: '\$25.99',
    image: 'assets/images/bread.png',
    description: 'Fresh ',
  ),
];