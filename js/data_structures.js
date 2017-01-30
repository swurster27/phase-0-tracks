var colors = ["blue", "orange", "magenta", "cyan"];
var names = ["Ed", "Billy", "Bandit", "Wilbur"];

colors.push("green");
names.push("Big Brown");

console.log(colors);
console.log(names);

var horsecolors = {};

function hashcreator(array1, array2) {
  for (var i = 0; i < array1.length; i++) {
    horseColors[array1[i]] = array2[i];
  };
  return horseColors;
};

hashCreator(names, colors);
console.log(horseColors);

function Car(brand, year, dirty){
  this.brand = brand;
  this.year = year;
  this.dirty = dirty;
  this.needwash = function() {
    if (this.dirty) {
      console.log("Wash your car!");
    } else {
      console.log("So fresh and so clean, clean!");
    }   
  };
}

var car = new Car("Toyota", 2013, true)
console.log(car);
car.needwash()

var car2 = new Car("Ford", 1968, false)
console.log(car2);
car2.needwash()