"use strict"


class Hello{
  constructor(){
    this.num = 5;

  }

  addTwo(){
    const addIt = () => {
      this.num = this.num + 2;
    }

    addIt();
  }
}

const h = new Hello();
h.addTwo();
console.log(h.num);
