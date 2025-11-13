//Convert a callback-based function into a Promise.
function getData(callback) {
  setTimeout(() => {
    callback("Data received!");
  }, 2000);
}
function getDataPromise() {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve("Data received!");
    }, 2000);
  });
}
getDataPromise()
  .then((data) => console.log(data))
  .catch((err) => console.log(err));
