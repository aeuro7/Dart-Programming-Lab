const pizzaPrices = {
'margherita': 5.5,
'pepperoni': 7.5,
'vegetarian': 6.5,
};

void main(List<String> arguments) {


  double total = 0 ;
  for (String i in arguments) {
    switch (i) {
      case 'margherita':
        print('$i: ${pizzaPrices[i]}');
        total += pizzaPrices[i]!;
        break;
      case 'pepperoni':
        print('$i: ${pizzaPrices[i]}');
        total += pizzaPrices[i]!;
        break;
      case 'vegetarian':
        print('$i: ${pizzaPrices[i]}');
        total += pizzaPrices[i]!;
        break;
      default:
        print('$i pizza is not on the menu');
        break;
    }
  }
   print('Total: ${total.toInt()}');

   // use --> dart 3.dart margherita pepperoni pineapple

  

}