
var n1=10;
var n2=20;


console.log(n1,n2);
console.error("n1 shud not be 10")
console.warn("n1 shud not be 10")
console.assert(n1!=10, "n1 shud not be 10")

add=(n1,n2)=>
{
    return n1+n2;
}

subtract = (n1,n2)=>
{
    return n1-n2;
}

console.log(add(n1,n2))
console.log(subtract(n1,n2));