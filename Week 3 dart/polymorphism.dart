// Superclass (Abstract Class)
abstract class Animal {
  // Abstract method (no implementation)
  void makeSound();
}

// Subclass 1
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Subclass 2
class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  // Create instances of Dog and Cat
  Animal dog = Dog();
  Animal cat = Cat();

  // Call the makeSound method on both
  dog.makeSound(); // Output: Dog barks
  cat.makeSound(); // Output: Cat meows
}
