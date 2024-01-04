// const student1 = 
// {
//     name : "ajay",
//     age : 21,
//     getDetails : ()=>
//     {
         
//     }

// }

// student1.address="Delhi";

// //  student1.nam
// // const student2 = 
// // {
// //     name : "ajay",
// //     age : 21,
// //     getDetails : ()=>
// //     {
         
// //     }
// // }

// // const student3 = 
// // {
// //     name : "ajay",
// //     age : 21,
// //     getDetails : ()=>
// //     {
         
// //     }
// // }

//  function Student(name , add)
//  {
//     this.name = name;
//     this.add = add;
//     getDetails = ()=>
//     {
//  console.log(this.name)
//     }
//  }

// Student.prototype.Display =  function ()
// {

// }

//  let s1 = new Student("ajay","delhi");
//  s1.getDetails();



class Student{
    #age;
    constructor(id, name,age)
    {
        this.id=id;
        this.name = name;
        this.#age = age;
    }
        GetDetails = function()
        {
            console.log("Inside Get")
            
             console.log(this.id + ' ' + this.name + this.#age);

        }
    }


    console.log("A")
 var s1 = new Student(1,"Ajay",20);

 s1.GetDetails();

 class PartTimeStudent extends Student
 {
     constructor(id, name ,age, batch)
     {
        super(id,name,age);
        this.batch = batch;
     }
     GetDetails = function()
     {
         console.log("Inside Get")
         
          console.log(this.batch + ' ' + this.name + this.#age);

     }

    }

    var p = new     PartTimeStudent(2,"a",12,'B002');
    p.GetDetails();



