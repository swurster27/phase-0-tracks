// Reverse a new string by writing code in java.
// Ex. ("hello") will change to "olleh"
// at the end we want the string to display in reverse
function reverse(string) {
	var newString = "";
	//The code below will start at the last character and loop backwards
	for (var i = string.length - 1; i >= 0; i--) {
		//Copy each character into the new string
		newString += string[i];
	}
	return newString;
}


var backwards = reverse("Boom Baby!");
if (1 == 1) {
	console.log(backwards);
}