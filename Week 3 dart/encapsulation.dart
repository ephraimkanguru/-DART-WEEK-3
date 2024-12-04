class BankAccount {
  // Private variable (encapsulation)
  double _balance;

  // Constructor to initialize balance
  BankAccount(this._balance);

  // Getter to access the balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited: Ksh $amount. New balance: Ksh $_balance');
    } else {
      print('Invalid deposit amount.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew: Ksh $amount. New balance: Ksh $_balance');
    } else {
      print('Insufficient balance or invalid withdrawal amount.');
    }
  }
}

void main() {
  // Create a BankAccount instance with an initial balance of 500 Ksh
  BankAccount account = BankAccount(500);
  
  // Deposit and withdraw money
  account.deposit(200);
  account.withdraw(100);
  
  // Print the current balance
  print('Current balance: Ksh ${account.balance}');
}
