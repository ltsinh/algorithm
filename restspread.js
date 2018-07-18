"use strict"

const person = {
  name: "Ken",
  age: 29,
  status: "active"
};

const accountSettings = {
  ... person,
  status: "inactive",
  mood: "happy"
};

console.log(accountSettings);
