//
fetch("https://github.com/AARTHI124")
  .then(response => response.json())
  .then(data => {
    console.log("GitHub Profile Data:");
    console.log(data);
  })
  .catch(error => console.log("Error:", error));
