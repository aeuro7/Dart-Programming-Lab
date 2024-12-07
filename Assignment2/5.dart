class BankAccount {
  String? _accountNumber;
  String? _accountHolder;
  double? _balance = 0;
  
  BankAccount(this._accountNumber,this._accountHolder,this._balance);

  double get balance => _balance!;

  String get myaccountHolder => _accountHolder!;
  
  set accountHolder(String value) {
    if (value.isEmpty) {
      print('Account holder cannot be empty');
      return;
    }
    _accountHolder = value;
    print('Account holder update to : $value');

  }
  set accountNumber(String value) {
    if (value.isEmpty) {
      print('Account number cannot be empty');
      return;
    }
    _accountNumber = value;
    print('Account number update to : $value');
  }

  void deposit(double amount) {
    _balance = _balance! + amount;
    print('Deposit of $amount successful. New balance: $_balance');
  }

  double withdraw(double amount) {
    if (amount > _balance!) {
      print('Insufficient balance');
      return 0.0;
    }
    _balance = _balance! - amount;
    print('Withdrawal of $amount successful. New balance: $_balance');
    return amount;
  }

  void printDescription() {
    print('Account number: $_accountNumber');
    print('Account holder: $_accountHolder');
    print('Balance: $_balance');
  }

}

void main() {
  BankAccount account = BankAccount('123456', 'John Doe', 1000.0);

  account.accountHolder = 'euro';
  account.printDescription();  
  account.deposit(500);
  account.withdraw(200);


}