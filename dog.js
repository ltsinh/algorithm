"use strict";

class Animal {
  eat() {
    console.log("om nom nom");
  }
}

class Dog extends Animal {
  // By using extends, the Dog class will inherit all methods from the Animal class
}

const d = new Dog();
d.eat();
