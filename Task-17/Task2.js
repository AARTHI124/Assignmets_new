let a=100;
let a=200;
console.log(a);
//here I am unable to assign a variable 2 times it is displying the error as "a has already been declared".
let a=10;
{
    let a=50;
    console.log(a);
}
console.log(a);//this doesn't show any error because i have redecalared a varibale inside the block scope
let a , b, c;
a=10;
b=40
c=a+b;
console.log(c);//here i have decleared a value then i have assigned the vale and used arithmetic opreation to get output
const a,b,c;
a=10;
b=40
c=a+b;
console.log(c);// const cannot be assigned later it should d assigned when declared




