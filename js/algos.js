// Must find te longest word in an array
// function will loop through the array and compare the lengths of the strings in the array
// return the longest word

function longestWord(array) {
  var longest = array [0];
  for (var i = 0; i < array.length; i++) {
    var words = array[i];
    if (words.length >= longest.length) {
      longest = words;
    }
  };
  return longest;
};


// build a function that compares key-values and returns true if it's a match

function keyMatchFinder(hash1, hash2) {
  for (var value1 in hash1) {
    for (var value2 in hash2) {
      if (value1 == value2) {
        console.log(true);
      } else {
        console.log(false);
      };
    }
  };
}

//define an array to store the words
//define a string so the code knows what letters to randomly choose from
//research the new random/min/max trick talked about. implement said trick
//add driver code that does it 10 times

var wordArray = []

function randomWord(number) {
  var string = '';
  var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  var index = 0
  while (index < number) {
    var idx = Math.floor(Math.random() * alphabet.length)
    string += alphabet[idx];

    index += 1
  };
  wordArray.push(string);
  console.log(wordArray);
}

// DRIVER CODE: RELEASE 2
var i = 0;

do {
  randomWord(Math.floor(Math.random() * 10))
  i++;
}
while (i <= 10);