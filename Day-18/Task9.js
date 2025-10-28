//9. Combine multiple conditions — if a user is an adult and subscribed, print “Welcome!”
let userage = 20;
let issubscribed = true;
let message;
if (userage >= 18) {
  message = "adult";
} else {
  message = "not adult";
}
if (message === "adult" && issubscribed === true) {
  console.log("Welcome!");
} else {
  console.log("You are not welcome.");
}