//Create a closure that maintains a counter.
function outer(){
    let counter=0;
    return function inner(){
        counter++;
        console.log("Counter:", counter);
    };
}
let count=outer();
count();
count();
count();
count();
count();
count();