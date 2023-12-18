const num = [1,2,3,4,5,6,7];

num.forEach(temp=>
{
     console.log(temp);
});


const list = num.filter(x=>x>5);
console.log(list.toString())



func1 = (x=>
    {
         console.log(x+10);
    })

    
num.map(func1);

console.log(num.map(Math.sqrt));



// function add(no1, no2)
// {
//     return no1+no2;
// }

// REST operator
function add(...num)
{
    var sum = 0;
    num.forEach(temp =>
        sum+= temp
        )

        return sum;
}

console.log(add(10,20,23,23,23,78));

// SPREAD operator

a = [1,2,3];
b = a;
console.log(a);
console.log(b);
a[0] = 100;
console.log(a);
console.log(b);

c = [...a];
console.log(a);
console.log(c);

a[0] = 1;
console.log(a);
console.log(c);
d = [1,2,3, ...a]; 
e = [...a,...b,2,3,45,...c]



















