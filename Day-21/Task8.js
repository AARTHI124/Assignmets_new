//Build a 2D array of names and marks — print each student's data.
const students = [
  ["aarthi", 85],
  ["keerthi", 72],
  ["rihaan", 90],
  ["harini", 77],
  ["dharshika",87]
];
for (let i = 0; i < students.length; i++) {
  const name = students[i][0]; 
  const marks = students[i][1]; 
  console.log("name: " , name+   ", marks: ", marks);
}