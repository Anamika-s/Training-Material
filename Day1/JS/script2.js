// function hello()
// {
//     return "hello";
// }

// console.log(hello());


// Arrow function
// short hand notation to wtite a function
 // >> 

//  hello = () =>
//  {
//  return "hello";
//  }

//  console.log(hello());



hello = () => "hello";


console.log(hello());


add = (no1, no2) => no1+no2;
console.log(add(1,2));

// spread operator

function addition (...no)
{
    var sum =0;
     for (var i=0;i<no.length ; i++)
     {
     sum += no[i];
     }
     return  sum;
}

console.log(addition(1,2,3));
console.log(addition(1,2,3,34,343,4,34,4));






