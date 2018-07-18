"use strict"

class Card {
  constructor(rank, suit){
    this.rank = rank;
    this.suit = suit;
  }
  outputCard(){
    console.log(this.rank + " of " + this.suit);
  }
}

const c = new Card(5, "diamonds");
c.outputCard();
