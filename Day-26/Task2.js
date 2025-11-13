//Write a callback that logs “Task Completed” after 3 seconds.
function download(callback) {
  console.log("Downloading...");
 setTimeout(callback,3000);
}

function finish() {
  console.log("Task Completed!");
}
download(finish);