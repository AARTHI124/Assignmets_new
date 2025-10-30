//Create a callback function that greets a user after getting their name.
function fname(name){
    console.log("hello " + name);   
}
function sname(callback){
    let name = "Aarthi Vaasugi";
    callback(name);
}
sname(fname);