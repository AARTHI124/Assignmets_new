//Create a function that accepts any number of parameters using the rest operator.
function sumAll(...numbers) {
  let total = 0;
  for (let num of numbers) {
    total += num;
  }
  console.log(`Total: ${total}`);
}
sumAll(10, 20, 30, 40);
