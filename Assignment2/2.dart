enum Operation { plus, minus, multiply, divide }

void main() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;  // You can change this to test different operations

  int result;
  switch (op) {
    case Operation.plus:
      result = a + b;
      break;
    case Operation.minus:
      result = a - b;
      break;
    case Operation.multiply:
      result = a * b;
      break;
    case Operation.divide:
      result = a ~/ b; // Use integer division
      break;
  }

  // Output the result in the format requested
  print('$a ${op == Operation.plus ? '+' : op == Operation.minus ? '-' : op == Operation.multiply ? '*' : '/'} $b = $result');
}
